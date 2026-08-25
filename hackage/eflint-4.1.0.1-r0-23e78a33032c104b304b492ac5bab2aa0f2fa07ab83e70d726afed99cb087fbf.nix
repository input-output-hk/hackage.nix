{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "eflint"; version = "4.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019-2020 Centrum Wiskunde & Informatica (CWI),\nCopyright (C) 2019-     University of Amsterdam (UvA)";
      maintainer = "ltvanbinsbergen@acm.org";
      author = "L. Thomas van Binsbergen";
      homepage = "https://gitlab.com/eflint";
      url = "";
      synopsis = "Reference interpreter for eFLINT specifications and scenario evaluation";
      description = "Software systems that share potentially sensitive data are subjected to laws, regulations, policies and/or contracts. The monitoring, control and enforcement processes applied to these systems are currently to a large extent manual, which we rather automate by embedding the processes as dedicated and adaptable software services in order to improve efficiency and effectiveness. This approach requires such regulatory services to be closely aligned with a formal description of the relevant norms.\n\neFLINT is a domain-specific language developed for formalizing norms from a variety of sources. The theoretical foundations of the language are found in transition systems and in Hohfeld’s framework of legal fundamental conceptions. The language can be used to formalize norms from a large variety of sources. The resulting specifications are executable and support several forms of reasoning such as automatic case assessment, manual exploration and simulation. Moreover, the specifications can be used to develop regulatory services for several types of monitoring, control and enforcement. The language is evaluated through a case study formalizing articles 6(1)(a) and 16 of the General Data Protection Regulation (GDPR).\n\nThe main academic paper is to be cited as follows.\n\n*Reflections on the design, applications and implementations of eFLINT, a domain-specific language for legal compliance reasoning. L. Thomas van Binsbergen, Christopher A. Esterhuyse, Tim Müller. Journal of Computer Languages. Volume 88, 2026. <https://doi.org/10.1016/j.cola.2026.101411>.\n\nMore related papers and preprints available at <https://ltvanbinsbergen.nl>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "eflint-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
        "eflint-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
          ];
          buildable = true;
        };
      };
    };
  }