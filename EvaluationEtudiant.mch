/* EvaluationEtudiant
 * Author: 
 * Creation date: 25/11/2013
 */
MACHINE
    EvaluationEtudiant
   
SETS
    MODULES
    ; ETUDIANTS
    ; GROUPES
    ; PROJETS

VARIABLES
    lesModules
    , lesEtudiants
    , lesGroupes
    , lesProjets
    , appartientAuxGroupes
    , specifiqueAuModule
    , participeAuxProjets
    , participeAuxModules
    
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
    & participeAuxProjets : lesEtudiants +-> lesProjets
    // Les etudiants peuvent appartenir a des modules
    & participeAuxModules : lesEtudiants +-> lesModules
    // Pour chaque etudiant le nombre de projet auxquels il participe
    // doit etre egal au nombre de module auxquels il est inscrit
    & ! ee.((ee : ETUDIANTS & 
             ee : dom(participeAuxProjets) & 
             ee : dom(participeAuxModules)) 
             => card(participeAuxProjets[{ee}]) = card(participeAuxModules[{ee}]))
//    & travailleSur : lesGroupes >->> lesModules
//    & determine : PROJETS <-> GROUPES

INITIALISATION
    lesModules := {}
    || lesEtudiants := {}
    || lesGroupes := {}
    || lesProjets := {}
    || appartientAuxGroupes :={}
    || specifiqueAuModule :={}
    || participeAuxProjets :={}
    || participeAuxModules :={}


OPERATIONS
            
/************************
 *      QUESTION a      *
 ************************/
 
    addEtuModule(ee,mm) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & mm : MODULES
            & mm : lesModules
            & ee /: dom(participeAuxModules)
        THEN
            participeAuxModules(ee) := mm
        END;
        
    addEtuProjet(ee,pp) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & pp : PROJETS
            & pp : lesProjets
            & ee /: dom(participeAuxProjets)
        THEN
            participeAuxProjets(ee) := pp
        END;
        
    addEtuGroupe(ee,gg) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & gg : GROUPES
            & gg : lesGroupes
            & ee /: dom(appartientAuxGroupes)
        THEN
            appartientAuxGroupes(ee) := gg
        END;
        
    delEtuModule(ee,mm) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & mm : MODULES
            & mm : lesModules
            & ee : dom(participeAuxModules)
        THEN
            participeAuxModules := participeAuxModules - {(ee|->mm)}
        END;
        
    delEtuProjet(ee,pp) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & pp : PROJETS
            & pp : lesProjets
            & ee : dom(participeAuxProjets)
        THEN
            participeAuxProjets := participeAuxProjets - {(ee|->pp)}
        END;
        
    delEtuGroupe(ee,gg) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
            & gg : GROUPES
            & gg : lesGroupes
            & ee : dom(appartientAuxGroupes)
        THEN
            appartientAuxGroupes := appartientAuxGroupes - {(ee|->gg)}
        END;
        
/************************
 *      QUESTION b      *
 ************************/
 
    // Ajouter date si on a le temps  
    addModule(mm) =
        PRE
            mm : MODULES
            & mm /: lesModules
        THEN
            lesModules := lesModules \/ {mm}
        END;
        
    addProjet(pp) =
        PRE
            pp : PROJETS
            & pp /: lesProjets
        THEN
            lesProjets := lesProjets \/ {pp}
        END;

    addGroupe(gg) =
        PRE
            gg : GROUPES
            & gg /: lesGroupes
        THEN
            lesGroupes := lesGroupes \/ {gg}
        END;
        
/************************
 *      QUESTION c      *
 ************************/
        
    list <-- listeGroupeParEtu(ee) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
        THEN
            list := appartientAuxGroupes[{ee}]
        END;
                
/************************
 *      QUESTION d      *
 ************************/
    
    list, nb <-- ProjetsEtNombreParEtu(ee) =
        PRE
            ee : ETUDIANTS
            & ee : lesEtudiants
        THEN
            list := participeAuxProjets[{ee}]
            || nb := card(list)
        END;
                
/************************
 *      QUESTION e      *
 ************************/

    list <-- EtuParticipePlusNGroupesDiff(nbGroup) =
        PRE
            nbGroup : NAT
        THEN
            ANY coupleEtuNbpj WHERE
                coupleEtuNbpj : lesEtudiants --> NAT
                & coupleEtuNbpj = {ee,nn | ee : lesEtudiants & nn : NAT & nn = (card(appartientAuxGroupes[{ee}]))} // Comment on calcul pour chaque etudiant
            THEN
                list := coupleEtuNbpj |> {ii | ii : NAT & ii > nbGroup}
            END
        END

END