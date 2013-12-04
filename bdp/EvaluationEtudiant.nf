Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(EvaluationEtudiant))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(EvaluationEtudiant))==(Machine(EvaluationEtudiant));
  Level(Machine(EvaluationEtudiant))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(EvaluationEtudiant)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(EvaluationEtudiant))==(?);
  List_Includes(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(EvaluationEtudiant))==(?);
  Context_List_Variables(Machine(EvaluationEtudiant))==(?);
  Abstract_List_Variables(Machine(EvaluationEtudiant))==(?);
  Local_List_Variables(Machine(EvaluationEtudiant))==(participeAuxGroupesModules,participeAuxModules,participeAuxProjets,specifiqueAuModule,appartientAuxGroupes,lesProjets,lesGroupes,lesEtudiants,lesModules);
  List_Variables(Machine(EvaluationEtudiant))==(participeAuxGroupesModules,participeAuxModules,participeAuxProjets,specifiqueAuModule,appartientAuxGroupes,lesProjets,lesGroupes,lesEtudiants,lesModules);
  External_List_Variables(Machine(EvaluationEtudiant))==(participeAuxGroupesModules,participeAuxModules,participeAuxProjets,specifiqueAuModule,appartientAuxGroupes,lesProjets,lesGroupes,lesEtudiants,lesModules)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(EvaluationEtudiant))==(?);
  Abstract_List_VisibleVariables(Machine(EvaluationEtudiant))==(?);
  External_List_VisibleVariables(Machine(EvaluationEtudiant))==(?);
  Expanded_List_VisibleVariables(Machine(EvaluationEtudiant))==(?);
  List_VisibleVariables(Machine(EvaluationEtudiant))==(?);
  Internal_List_VisibleVariables(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(EvaluationEtudiant))==(btrue);
  Gluing_List_Invariant(Machine(EvaluationEtudiant))==(btrue);
  Expanded_List_Invariant(Machine(EvaluationEtudiant))==(btrue);
  Abstract_List_Invariant(Machine(EvaluationEtudiant))==(btrue);
  Context_List_Invariant(Machine(EvaluationEtudiant))==(btrue);
  List_Invariant(Machine(EvaluationEtudiant))==(lesModules <: MODULES & lesEtudiants <: ETUDIANTS & lesGroupes <: GROUPES & lesProjets <: PROJETS & appartientAuxGroupes: lesEtudiants <-> lesGroupes & specifiqueAuModule: lesProjets +-> lesModules & participeAuxProjets: lesEtudiants <-> lesProjets & participeAuxModules: lesEtudiants <-> lesModules & participeAuxGroupesModules: lesEtudiants +-> lesModules*lesGroupes & !ee.(ee: ETUDIANTS & ee: dom(participeAuxProjets) & ee: dom(participeAuxModules) => card(participeAuxProjets[{ee}]) = card(participeAuxModules[{ee}])))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(EvaluationEtudiant))==(btrue);
  Abstract_List_Assertions(Machine(EvaluationEtudiant))==(btrue);
  Context_List_Assertions(Machine(EvaluationEtudiant))==(btrue);
  List_Assertions(Machine(EvaluationEtudiant))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(EvaluationEtudiant))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(EvaluationEtudiant))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(EvaluationEtudiant))==(lesModules,lesEtudiants,lesGroupes,lesProjets,appartientAuxGroupes,specifiqueAuModule,participeAuxProjets,participeAuxModules,participeAuxGroupesModules:={},{},{},{},{},{},{},{},{});
  Context_List_Initialisation(Machine(EvaluationEtudiant))==(skip);
  List_Initialisation(Machine(EvaluationEtudiant))==(lesModules:={} || lesEtudiants:={} || lesGroupes:={} || lesProjets:={} || appartientAuxGroupes:={} || specifiqueAuModule:={} || participeAuxProjets:={} || participeAuxModules:={} || participeAuxGroupesModules:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(EvaluationEtudiant))==(btrue);
  List_Constraints(Machine(EvaluationEtudiant))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(EvaluationEtudiant))==(addEtuModule,addEtuProjet,addEtuGroupe,delEtuModule,delEtuProjet,delEtuGroupe,addModule,addProjet,addGroupe,listeGroupeParEtu,ProjetsEtNombreParEtu,EssaiEtuParticipePlusNGroupesDiff);
  List_Operations(Machine(EvaluationEtudiant))==(addEtuModule,addEtuProjet,addEtuGroupe,delEtuModule,delEtuProjet,delEtuGroupe,addModule,addProjet,addGroupe,listeGroupeParEtu,ProjetsEtNombreParEtu,EssaiEtuParticipePlusNGroupesDiff)
END
&
THEORY ListInputX IS
  List_Input(Machine(EvaluationEtudiant),addEtuModule)==(ee,mm,pp);
  List_Input(Machine(EvaluationEtudiant),addEtuProjet)==(ee,pp);
  List_Input(Machine(EvaluationEtudiant),addEtuGroupe)==(ee,gg);
  List_Input(Machine(EvaluationEtudiant),delEtuModule)==(ee,mm,pp);
  List_Input(Machine(EvaluationEtudiant),delEtuProjet)==(ee,pp);
  List_Input(Machine(EvaluationEtudiant),delEtuGroupe)==(ee,gg);
  List_Input(Machine(EvaluationEtudiant),addModule)==(mm);
  List_Input(Machine(EvaluationEtudiant),addProjet)==(pp);
  List_Input(Machine(EvaluationEtudiant),addGroupe)==(gg);
  List_Input(Machine(EvaluationEtudiant),listeGroupeParEtu)==(ee);
  List_Input(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(ee);
  List_Input(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(nbGroup)
END
&
THEORY ListOutputX IS
  List_Output(Machine(EvaluationEtudiant),addEtuModule)==(?);
  List_Output(Machine(EvaluationEtudiant),addEtuProjet)==(?);
  List_Output(Machine(EvaluationEtudiant),addEtuGroupe)==(?);
  List_Output(Machine(EvaluationEtudiant),delEtuModule)==(?);
  List_Output(Machine(EvaluationEtudiant),delEtuProjet)==(?);
  List_Output(Machine(EvaluationEtudiant),delEtuGroupe)==(?);
  List_Output(Machine(EvaluationEtudiant),addModule)==(?);
  List_Output(Machine(EvaluationEtudiant),addProjet)==(?);
  List_Output(Machine(EvaluationEtudiant),addGroupe)==(?);
  List_Output(Machine(EvaluationEtudiant),listeGroupeParEtu)==(list);
  List_Output(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(list,nb);
  List_Output(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(list)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(EvaluationEtudiant),addEtuModule)==(addEtuModule(ee,mm,pp));
  List_Header(Machine(EvaluationEtudiant),addEtuProjet)==(addEtuProjet(ee,pp));
  List_Header(Machine(EvaluationEtudiant),addEtuGroupe)==(addEtuGroupe(ee,gg));
  List_Header(Machine(EvaluationEtudiant),delEtuModule)==(delEtuModule(ee,mm,pp));
  List_Header(Machine(EvaluationEtudiant),delEtuProjet)==(delEtuProjet(ee,pp));
  List_Header(Machine(EvaluationEtudiant),delEtuGroupe)==(delEtuGroupe(ee,gg));
  List_Header(Machine(EvaluationEtudiant),addModule)==(addModule(mm));
  List_Header(Machine(EvaluationEtudiant),addProjet)==(addProjet(pp));
  List_Header(Machine(EvaluationEtudiant),addGroupe)==(addGroupe(gg));
  List_Header(Machine(EvaluationEtudiant),listeGroupeParEtu)==(list <-- listeGroupeParEtu(ee));
  List_Header(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(list,nb <-- ProjetsEtNombreParEtu(ee));
  List_Header(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(list <-- EssaiEtuParticipePlusNGroupesDiff(nbGroup))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(EvaluationEtudiant),addEtuModule)==(ee: ETUDIANTS & ee: lesEtudiants & mm: MODULES & mm: lesModules & pp: PROJETS & pp: lesProjets & ee|->mm/:participeAuxModules);
  List_Precondition(Machine(EvaluationEtudiant),addEtuProjet)==(ee: ETUDIANTS & ee: lesEtudiants & pp: PROJETS & pp: lesProjets & ee|->pp/:participeAuxProjets);
  List_Precondition(Machine(EvaluationEtudiant),addEtuGroupe)==(ee: ETUDIANTS & ee: lesEtudiants & gg: GROUPES & gg: lesGroupes & ee/:dom(appartientAuxGroupes));
  List_Precondition(Machine(EvaluationEtudiant),delEtuModule)==(ee: ETUDIANTS & ee: lesEtudiants & mm: MODULES & mm: lesModules & pp: PROJETS & pp: lesProjets & ee: dom(participeAuxModules));
  List_Precondition(Machine(EvaluationEtudiant),delEtuProjet)==(ee: ETUDIANTS & ee: lesEtudiants & pp: PROJETS & pp: lesProjets & ee: dom(participeAuxProjets) & ee: dom(participeAuxModules));
  List_Precondition(Machine(EvaluationEtudiant),delEtuGroupe)==(ee: ETUDIANTS & ee: lesEtudiants & gg: GROUPES & gg: lesGroupes & ee: dom(appartientAuxGroupes));
  List_Precondition(Machine(EvaluationEtudiant),addModule)==(mm: MODULES & mm/:lesModules);
  List_Precondition(Machine(EvaluationEtudiant),addProjet)==(pp: PROJETS & pp/:lesProjets);
  List_Precondition(Machine(EvaluationEtudiant),addGroupe)==(gg: GROUPES & gg/:lesGroupes);
  List_Precondition(Machine(EvaluationEtudiant),listeGroupeParEtu)==(ee: ETUDIANTS & ee: lesEtudiants);
  List_Precondition(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(ee: ETUDIANTS & ee: lesEtudiants);
  List_Precondition(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(nbGroup: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(nbGroup: NAT | @coupleEtuNbpj.(coupleEtuNbpj: lesEtudiants --> NAT & coupleEtuNbpj = {ee,nn | ee: lesEtudiants & nn: NAT & nn = card(appartientAuxGroupes[{ee}])} ==> list:=coupleEtuNbpj|>{ii | ii: NAT & ii>nbGroup}));
  Expanded_List_Substitution(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(ee: ETUDIANTS & ee: lesEtudiants | list,nb:=participeAuxProjets[{ee}],card(list));
  Expanded_List_Substitution(Machine(EvaluationEtudiant),listeGroupeParEtu)==(ee: ETUDIANTS & ee: lesEtudiants | list:=participeAuxGroupesModules[{ee}]);
  Expanded_List_Substitution(Machine(EvaluationEtudiant),addGroupe)==(gg: GROUPES & gg/:lesGroupes | lesGroupes:=lesGroupes\/{gg});
  Expanded_List_Substitution(Machine(EvaluationEtudiant),addProjet)==(pp: PROJETS & pp/:lesProjets | lesProjets:=lesProjets\/{pp});
  Expanded_List_Substitution(Machine(EvaluationEtudiant),addModule)==(mm: MODULES & mm/:lesModules | lesModules:=lesModules\/{mm});
  Expanded_List_Substitution(Machine(EvaluationEtudiant),delEtuGroupe)==(ee: ETUDIANTS & ee: lesEtudiants & gg: GROUPES & gg: lesGroupes & ee: dom(appartientAuxGroupes) | appartientAuxGroupes:=appartientAuxGroupes-{ee|->gg});
  Expanded_List_Substitution(Machine(EvaluationEtudiant),delEtuProjet)==(ee: ETUDIANTS & ee: lesEtudiants & pp: PROJETS & pp: lesProjets & ee: dom(participeAuxProjets) & ee: dom(participeAuxModules) | @mm.(mm: MODULES & mm: lesModules & mm = specifiqueAuModule(pp) ==> participeAuxProjets,participeAuxModules:=participeAuxProjets-{ee|->pp},participeAuxModules-{ee|->mm}));
  Expanded_List_Substitution(Machine(EvaluationEtudiant),delEtuModule)==(ee: ETUDIANTS & ee: lesEtudiants & mm: MODULES & mm: lesModules & pp: PROJETS & pp: lesProjets & ee: dom(participeAuxModules) | participeAuxModules,participeAuxProjets:=participeAuxModules-{ee|->mm},participeAuxProjets-{ee|->pp});
  Expanded_List_Substitution(Machine(EvaluationEtudiant),addEtuGroupe)==(ee: ETUDIANTS & ee: lesEtudiants & gg: GROUPES & gg: lesGroupes & ee/:dom(appartientAuxGroupes) | appartientAuxGroupes:=appartientAuxGroupes\/{ee|->gg});
  Expanded_List_Substitution(Machine(EvaluationEtudiant),addEtuProjet)==(ee: ETUDIANTS & ee: lesEtudiants & pp: PROJETS & pp: lesProjets & ee|->pp/:participeAuxProjets | @mm.(mm: MODULES & mm = specifiqueAuModule(pp) ==> participeAuxProjets,participeAuxModules:=participeAuxProjets\/{ee|->pp},participeAuxModules\/{ee|->mm}));
  Expanded_List_Substitution(Machine(EvaluationEtudiant),addEtuModule)==(ee: ETUDIANTS & ee: lesEtudiants & mm: MODULES & mm: lesModules & pp: PROJETS & pp: lesProjets & ee|->mm/:participeAuxModules | participeAuxModules,participeAuxProjets:=participeAuxModules\/{ee|->mm},participeAuxProjets\/{ee|->pp});
  List_Substitution(Machine(EvaluationEtudiant),addEtuModule)==(participeAuxModules:=participeAuxModules\/{ee|->mm} || participeAuxProjets:=participeAuxProjets\/{ee|->pp});
  List_Substitution(Machine(EvaluationEtudiant),addEtuProjet)==(ANY mm WHERE mm: MODULES & mm = specifiqueAuModule(pp) THEN participeAuxProjets:=participeAuxProjets\/{ee|->pp} || participeAuxModules:=participeAuxModules\/{ee|->mm} END);
  List_Substitution(Machine(EvaluationEtudiant),addEtuGroupe)==(appartientAuxGroupes:=appartientAuxGroupes\/{ee|->gg});
  List_Substitution(Machine(EvaluationEtudiant),delEtuModule)==(participeAuxModules:=participeAuxModules-{ee|->mm} || participeAuxProjets:=participeAuxProjets-{ee|->pp});
  List_Substitution(Machine(EvaluationEtudiant),delEtuProjet)==(ANY mm WHERE mm: MODULES & mm: lesModules & mm = specifiqueAuModule(pp) THEN participeAuxProjets:=participeAuxProjets-{ee|->pp} || participeAuxModules:=participeAuxModules-{ee|->mm} END);
  List_Substitution(Machine(EvaluationEtudiant),delEtuGroupe)==(appartientAuxGroupes:=appartientAuxGroupes-{ee|->gg});
  List_Substitution(Machine(EvaluationEtudiant),addModule)==(lesModules:=lesModules\/{mm});
  List_Substitution(Machine(EvaluationEtudiant),addProjet)==(lesProjets:=lesProjets\/{pp});
  List_Substitution(Machine(EvaluationEtudiant),addGroupe)==(lesGroupes:=lesGroupes\/{gg});
  List_Substitution(Machine(EvaluationEtudiant),listeGroupeParEtu)==(list:=participeAuxGroupesModules[{ee}]);
  List_Substitution(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(list:=participeAuxProjets[{ee}] || nb:=card(list));
  List_Substitution(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(ANY coupleEtuNbpj WHERE coupleEtuNbpj: lesEtudiants --> NAT & coupleEtuNbpj = {ee,nn | ee: lesEtudiants & nn: NAT & nn = card(appartientAuxGroupes[{ee}])} THEN list:=coupleEtuNbpj|>{ii | ii: NAT & ii>nbGroup} END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(EvaluationEtudiant))==(?);
  Inherited_List_Constants(Machine(EvaluationEtudiant))==(?);
  List_Constants(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(EvaluationEtudiant),MODULES)==(?);
  Context_List_Enumerated(Machine(EvaluationEtudiant))==(?);
  Context_List_Defered(Machine(EvaluationEtudiant))==(?);
  Context_List_Sets(Machine(EvaluationEtudiant))==(?);
  List_Valuable_Sets(Machine(EvaluationEtudiant))==(MODULES,ETUDIANTS,GROUPES,PROJETS);
  Inherited_List_Enumerated(Machine(EvaluationEtudiant))==(?);
  Inherited_List_Defered(Machine(EvaluationEtudiant))==(?);
  Inherited_List_Sets(Machine(EvaluationEtudiant))==(?);
  List_Enumerated(Machine(EvaluationEtudiant))==(?);
  List_Defered(Machine(EvaluationEtudiant))==(MODULES,ETUDIANTS,GROUPES,PROJETS);
  List_Sets(Machine(EvaluationEtudiant))==(MODULES,ETUDIANTS,GROUPES,PROJETS);
  Set_Definition(Machine(EvaluationEtudiant),ETUDIANTS)==(?);
  Set_Definition(Machine(EvaluationEtudiant),GROUPES)==(?);
  Set_Definition(Machine(EvaluationEtudiant),PROJETS)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(EvaluationEtudiant))==(?);
  Expanded_List_HiddenConstants(Machine(EvaluationEtudiant))==(?);
  List_HiddenConstants(Machine(EvaluationEtudiant))==(?);
  External_List_HiddenConstants(Machine(EvaluationEtudiant))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(EvaluationEtudiant))==(btrue);
  Context_List_Properties(Machine(EvaluationEtudiant))==(btrue);
  Inherited_List_Properties(Machine(EvaluationEtudiant))==(btrue);
  List_Properties(Machine(EvaluationEtudiant))==(MODULES: FIN(INTEGER) & not(MODULES = {}) & ETUDIANTS: FIN(INTEGER) & not(ETUDIANTS = {}) & GROUPES: FIN(INTEGER) & not(GROUPES = {}) & PROJETS: FIN(INTEGER) & not(PROJETS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(EvaluationEtudiant),addEtuModule)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),addEtuProjet)==(Var(mm) == atype(MODULES,?,?));
  List_ANY_Var(Machine(EvaluationEtudiant),addEtuGroupe)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),delEtuModule)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),delEtuProjet)==(Var(mm) == atype(MODULES,?,?));
  List_ANY_Var(Machine(EvaluationEtudiant),delEtuGroupe)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),addModule)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),addProjet)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),addGroupe)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),listeGroupeParEtu)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),ProjetsEtNombreParEtu)==(?);
  List_ANY_Var(Machine(EvaluationEtudiant),EssaiEtuParticipePlusNGroupesDiff)==(Var(coupleEtuNbpj) == SetOf(atype(ETUDIANTS,?,?)*btype(INTEGER,0,MAXINT)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(EvaluationEtudiant)) == (MODULES,ETUDIANTS,GROUPES,PROJETS | ? | participeAuxGroupesModules,participeAuxModules,participeAuxProjets,specifiqueAuModule,appartientAuxGroupes,lesProjets,lesGroupes,lesEtudiants,lesModules | ? | addEtuModule,addEtuProjet,addEtuGroupe,delEtuModule,delEtuProjet,delEtuGroupe,addModule,addProjet,addGroupe,listeGroupeParEtu,ProjetsEtNombreParEtu,EssaiEtuParticipePlusNGroupesDiff | ? | ? | ? | EvaluationEtudiant);
  List_Of_HiddenCst_Ids(Machine(EvaluationEtudiant)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(EvaluationEtudiant)) == (?);
  List_Of_VisibleVar_Ids(Machine(EvaluationEtudiant)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(EvaluationEtudiant)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(EvaluationEtudiant)) == (Type(MODULES) == Cst(SetOf(atype(MODULES,"[MODULES","]MODULES")));Type(ETUDIANTS) == Cst(SetOf(atype(ETUDIANTS,"[ETUDIANTS","]ETUDIANTS")));Type(GROUPES) == Cst(SetOf(atype(GROUPES,"[GROUPES","]GROUPES")));Type(PROJETS) == Cst(SetOf(atype(PROJETS,"[PROJETS","]PROJETS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(EvaluationEtudiant)) == (Type(participeAuxGroupesModules) == Mvl(SetOf(atype(ETUDIANTS,?,?)*(atype(MODULES,?,?)*atype(GROUPES,?,?))));Type(participeAuxModules) == Mvl(SetOf(atype(ETUDIANTS,?,?)*atype(MODULES,?,?)));Type(participeAuxProjets) == Mvl(SetOf(atype(ETUDIANTS,?,?)*atype(PROJETS,?,?)));Type(specifiqueAuModule) == Mvl(SetOf(atype(PROJETS,?,?)*atype(MODULES,?,?)));Type(appartientAuxGroupes) == Mvl(SetOf(atype(ETUDIANTS,?,?)*atype(GROUPES,?,?)));Type(lesProjets) == Mvl(SetOf(atype(PROJETS,?,?)));Type(lesGroupes) == Mvl(SetOf(atype(GROUPES,?,?)));Type(lesEtudiants) == Mvl(SetOf(atype(ETUDIANTS,?,?)));Type(lesModules) == Mvl(SetOf(atype(MODULES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(EvaluationEtudiant)) == (Type(EssaiEtuParticipePlusNGroupesDiff) == Cst(SetOf(atype(ETUDIANTS,?,?)*btype(INTEGER,?,?)),btype(INTEGER,?,?));Type(ProjetsEtNombreParEtu) == Cst(SetOf(atype(PROJETS,?,?))*btype(INTEGER,?,?),atype(ETUDIANTS,?,?));Type(listeGroupeParEtu) == Cst(SetOf(atype(MODULES,?,?)*atype(GROUPES,?,?)),atype(ETUDIANTS,?,?));Type(addGroupe) == Cst(No_type,atype(GROUPES,?,?));Type(addProjet) == Cst(No_type,atype(PROJETS,?,?));Type(addModule) == Cst(No_type,atype(MODULES,?,?));Type(delEtuGroupe) == Cst(No_type,atype(ETUDIANTS,?,?)*atype(GROUPES,?,?));Type(delEtuProjet) == Cst(No_type,atype(ETUDIANTS,?,?)*atype(PROJETS,?,?));Type(delEtuModule) == Cst(No_type,atype(ETUDIANTS,?,?)*atype(MODULES,?,?)*atype(PROJETS,?,?));Type(addEtuGroupe) == Cst(No_type,atype(ETUDIANTS,?,?)*atype(GROUPES,?,?));Type(addEtuProjet) == Cst(No_type,atype(ETUDIANTS,?,?)*atype(PROJETS,?,?));Type(addEtuModule) == Cst(No_type,atype(ETUDIANTS,?,?)*atype(MODULES,?,?)*atype(PROJETS,?,?)));
  Observers(Machine(EvaluationEtudiant)) == (Type(EssaiEtuParticipePlusNGroupesDiff) == Cst(SetOf(atype(ETUDIANTS,?,?)*btype(INTEGER,?,?)),btype(INTEGER,?,?));Type(ProjetsEtNombreParEtu) == Cst(SetOf(atype(PROJETS,?,?))*btype(INTEGER,?,?),atype(ETUDIANTS,?,?));Type(listeGroupeParEtu) == Cst(SetOf(atype(MODULES,?,?)*atype(GROUPES,?,?)),atype(ETUDIANTS,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
