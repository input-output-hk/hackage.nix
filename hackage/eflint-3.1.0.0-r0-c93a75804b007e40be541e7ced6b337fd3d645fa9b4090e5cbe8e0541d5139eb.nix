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
      specVersion = "1.10";
      identifier = { name = "eflint"; version = "3.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019-2022 L. Thomas van Binsbergen";
      maintainer = "ltvanbinsbergen@acm.org";
      author = "L. Thomas van Binsbergen";
      homepage = "http://cci-research.nl";
      url = "";
      synopsis = "Simulation interpreter for FLINT policy descriptions";
      description = "Software systems that share potentially sensitive data are subjected to laws, regulations, policies and/or contracts. The monitoring, control and enforcement processes applied to these systems are currently to a large extent manual, which we rather automate by embedding the processes as dedicated and adaptable software services in order to improve efficiency and effectiveness. This approach requires such regulatory services to be closely aligned with a formal description of the relevant norms.\n\neFLINT is a domain-specific language developed for formalizing norms from a variety of sources. The theoretical foundations of the language are found in transition systems and in Hohfeld’s framework of legal fundamental conceptions. The language can be used to formalize norms from a large variety of sources. The resulting specifications are executable and support several forms of reasoning such as automatic case assessment, manual exploration and simulation. Moreover, the specifications can be used to develop regulatory services for several types of monitoring, control and enforcement. The language is evaluated through a case study formalizing articles 6(1)(a) and 16 of the General Data Protection Regulation (GDPR).\n\nRelated papers:\n\n*eFLINT: a Domain-Specific Language for Executable Norm Specifications. Proceedings of GPCE '20. L. Thomas van Binsbergen, Lu-Chi Liu, Robert van Doesburg, and Tom van Engers. <https://doi.org/10.1145/3425898.3426958>.\n*Dynamic generation of access control policies from social policies. Proceedings of The 11th International Conference on Current and Future Trends of Information and Communication Technologies in Healthcare (ICTH 2021). Procedia Computer Science 198C (2022) pp. 140-147. L. Thomas van Binsbergen, Milen G. Kebede, Joshua Baugh, Tom van Engers, Dannis G. van Vuurden.\n\nPreprints available at <https://ltvanbinsbergen.nl>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "eflint-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
        "eflint-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exploring-interpreters" or (errorHandler.buildDepError "exploring-interpreters"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }