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
      specVersion = "2.4";
      identifier = { name = "dhall-recursive-adt"; version = "0.1.0.1"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "amesgen@amesgen.de";
      author = "amesgen";
      homepage = "https://github.com/amesgen/dhall-recursive-adt";
      url = "";
      synopsis = "Convert recursive ADTs from and to Dhall";
      description = "Convert recursive ADTs from and to Dhall by automating derivation of @FromDhall@/@ToDhall@ as much as possible";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall-recursive-adt" or (errorHandler.buildDepError "dhall-recursive-adt"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        "docspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yasi" or (errorHandler.buildDepError "yasi"))
            ];
          buildable = true;
          };
        };
      };
    }