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
      specVersion = "1.8";
      identifier = { name = "dclabel"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Deian Stefan, Alejandro Russo, John C. Mitchell, David Mazieres";
      maintainer = "Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "Deian Stefan, Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "The Disjunction Category Label Format";
      description = "The /DC Label/ (DCLabel) library provides dynamic information\nflow control label format in the form of conjunctions of\ndisjunctions of principals. Most code should import module\n\"DCLabel.Safe\"; trusted code should import \"DCLabel.TCB\".\nThe core functionality of the library is documented in\n\"DCLabel.Core\", while the small EDSL used to create labels is\ndocuments in \"DCLabel.NanoEDSL\". DCLabel was implemented by David\nMazieres (<http://www.scs.stanford.edu/~dm/>), Deian Stefan\n(<http://www.scs.stanford.edu/~deian/>), and Alejandro Russo\n(<http://www.cse.chalmers.se/~russo/>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dclabel" or (errorHandler.buildDepError "dclabel"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
          buildable = true;
        };
      };
    };
  }