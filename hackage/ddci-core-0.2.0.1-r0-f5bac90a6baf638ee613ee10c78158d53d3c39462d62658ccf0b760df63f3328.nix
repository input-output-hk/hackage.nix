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
      specVersion = "1.6";
      identifier = { name = "ddci-core"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciple Core language interactive interpreter.";
      description = "DDCi-core is a user-facing interpreter that can type-check,\ntransform and evaluate expressions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or (errorHandler.buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or (errorHandler.buildDepError "ddc-core-simpl"))
            ];
          buildable = true;
          };
        };
      };
    }