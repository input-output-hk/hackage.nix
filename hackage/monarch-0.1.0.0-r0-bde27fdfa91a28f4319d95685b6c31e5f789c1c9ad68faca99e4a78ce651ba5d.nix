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
      identifier = { name = "monarch"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      homepage = "https://github.com/notogawa/monarch";
      url = "";
      synopsis = "Monadic interface for TokyoTyrant.";
      description = "This package provides simple monadic interface for TokyoTyrant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tokyotyrant-haskell" or (errorHandler.buildDepError "tokyotyrant-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tokyotyrant-haskell" or (errorHandler.buildDepError "tokyotyrant-haskell"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }