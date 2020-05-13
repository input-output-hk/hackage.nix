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
      identifier = { name = "superrecord"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/superrecord#readme";
      url = "";
      synopsis = "Supercharged anonymous records";
      description = "Anonymous records with various useful utilities";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "superrecord-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."superrecord" or (errorHandler.buildDepError "superrecord"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "superrecord-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."superrecord" or (errorHandler.buildDepError "superrecord"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."labels" or (errorHandler.buildDepError "labels"))
            (hsPkgs."bookkeeper" or (errorHandler.buildDepError "bookkeeper"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }