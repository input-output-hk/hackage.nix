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
      identifier = { name = "cereal-conduit"; version = "0.0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/litherum/cereal-conduit";
      url = "";
      synopsis = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
      description = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test-cereal-conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }