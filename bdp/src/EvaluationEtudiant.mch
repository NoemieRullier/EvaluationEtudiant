/* EvaluationEtudiant
 * Author: FAGNIEZ Florian, GOHIER Brian et RULLIER Noemie
 * Creation date: 25/11/2013
 */
MACHINE
    EvaluationEtudiant

SETS
    MODULES
    ; ETUDIANTS
    ; GROUPES
    ; PROJETS

ABSTRACT_VARIABLES
    lesModules
    , lesEtudiants
    , lesGroupes
    , lesProjets
    , appartientAuxGroupes
    , specifiqueAuModule
    , participeAuxProjets
    , participeAuxModules
    , participeAuxGroupesModules

INVARIANT
    lesModules <: MODULES
    & lesEtudiants <: ETUDIANTS
    & lesGroupes <: GROUPES
    & lesProjets <: PROJETS
    // Les etudiants peuvent appartenir a un ou plusieurs groupes
    & appartientAuxGroupes : lesEtudiants <-> lesGroupes
    // Chaque projet appartient a un module
    & specifiqueAuModule : lesProjets +-> lesModules
    // Les peuvent participer a des projets
    & participeAuxProjets : lesEtudiants <-> lesProjets
    // Les etudiants peuvent appartenir a des modules
    & participeAuxModules : lesEtudiants <-> lesModules
    // Les etudiants peuvent appartenir a un seul groupe par module
    & participeAuxGroupesModules : lesEtudiants +-> lesModules * lesGroupes
    // Pour chaque etudiant le nombre de projet auxquels il participe
    // doit etre egal au nombre de module auxquels il est inscrit
    & ! ee . ( ( ee : ETUDIANTS &
             ee : dom ( participeAuxProjets ) &
             ee : dom ( participeAuxModules ) )
             => card ( participeAuxProjets [ { ee } ] ) = card ( participeAuxModules [ { ee } ] ) )
//    & travailleSur : lesGroupes >->> lesModules
//    & determine : PROJETS <-> GROUPES

INITIALISATION
    lesModules := {}
    || lesEtudiants := {}
    || lesGroupes := {}
    || lesProjets := {}
    || appartientAuxGroupes := {}
    || specifiqueAuModule := {}
    || participeAuxProjets := {}
    || participeAuxModules := {}
    || participeAuxGroupesModules := {}


OPERATIONS

/************************
 *      QUESTION a      *
 ************************/

    addEtuModule ( ee , mm , pp ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & mm : MODULES
            & mm : lesModules
            & pp : PROJETS
            & pp : lesProjets
            & ee |-> mm /: participeAuxModules
        THEN
            participeAuxModules := participeAuxModules \/ { ( ee |-> mm ) }
            || participeAuxProjets := participeAuxProjets \/ { ( ee |-> pp ) }
        END ;

    addEtuProjet ( ee , pp ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & pp : PROJETS
            & pp : lesProjets
            & ee |-> pp /: participeAuxProjets
        THEN
            ANY mm WHERE
                mm : MODULES
                & mm = specifiqueAuModule ( pp )
            THEN
            participeAuxProjets := participeAuxProjets \/ { ( ee |-> pp ) }
            || participeAuxModules := participeAuxModules \/ { ( ee |-> mm ) }
            END
        END ;

    addEtuGroupe ( ee , gg ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & gg : GROUPES
            & gg : lesGroupes
            & ee /: dom ( appartientAuxGroupes )
        THEN
            appartientAuxGroupes := appartientAuxGroupes \/ { ( ee |-> gg ) }
        END ;

    delEtuModule ( ee , mm , pp ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & mm : MODULES
            & mm : lesModules
            & pp : PROJETS
            & pp : lesProjets
            & ee : dom ( participeAuxModules )
        THEN
            participeAuxModules := participeAuxModules - { ( ee |-> mm ) }
            || participeAuxProjets := participeAuxProjets - { ( ee |-> pp ) }
        END ;

    delEtuProjet ( ee , pp ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & pp : PROJETS
            & pp : lesProjets
            & ee : dom ( participeAuxProjets )
            & ee : dom ( participeAuxModules )
        THEN
            ANY mm WHERE
                mm : MODULES
                & mm : lesModules
                & mm = specifiqueAuModule ( pp )
            THEN
                participeAuxProjets := participeAuxProjets - { ( ee |-> pp ) }
                || participeAuxModules := participeAuxModules - { ( ee |-> mm ) }
            END
        END ;

    delEtuGroupe ( ee , gg ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & gg : GROUPES
            & gg : lesGroupes
            & ee : dom ( appartientAuxGroupes )
        THEN
            appartientAuxGroupes := appartientAuxGroupes - { ( ee |-> gg ) }
        END ;

/************************
 *      QUESTION b      *
 ************************/

    // Ajouter date si on a le temps  
    addModule ( mm ) =
        PRE
            mm : MODULES
            & mm /: lesModules
        THEN
            lesModules := lesModules \/ { mm }
        END ;

    addProjet ( pp ) =
        PRE
            pp : PROJETS
            & pp /: lesProjets
        THEN
            lesProjets := lesProjets \/ { pp }
        END ;

    addGroupe ( gg ) =
        PRE
            gg : GROUPES
            & gg /: lesGroupes
        THEN
            lesGroupes := lesGroupes \/ { gg }
        END ;

/************************
 *      QUESTION c      *
 ************************/

    list <-- listeGroupeParEtu ( ee ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
        THEN
//            list := appartientAuxGroupes[{ee}]
         list := participeAuxGroupesModules [ { ee } ]
        END ;

/************************
 *      QUESTION d      *
 ************************/

    list , nb <-- ProjetsEtNombreParEtu ( ee ) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
        THEN
            list := participeAuxProjets [ { ee } ]
            || nb := card ( list )
        END ;

/************************
 *      QUESTION e      *
 ************************/

    list <-- EssaiEtuParticipePlusNGroupesDiff ( nbGroup ) =
        PRE
            nbGroup : NAT
        THEN
            ANY coupleEtuNbpj WHERE
                coupleEtuNbpj : lesEtudiants --> NAT
                & coupleEtuNbpj = { ee , nn | ee : lesEtudiants & nn : NAT & nn = ( card ( appartientAuxGroupes [ { ee } ] ) ) } // Comment on calcul pour chaque etudiant
            THEN
                list := coupleEtuNbpj |> { ii | ii : NAT & ii > nbGroup }
            END
        END

END
