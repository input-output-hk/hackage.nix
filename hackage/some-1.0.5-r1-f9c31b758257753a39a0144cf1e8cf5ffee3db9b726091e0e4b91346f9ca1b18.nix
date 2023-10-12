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
    flags = { newtype-unsafe = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "some"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "James Cook <mokus@deepbondi.net>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/haskellari/some";
      url = "";
      synopsis = "Existential type: Some";
      description = "This library defines an existential type 'Some'.\n\n@\ndata Some f where\n\\    Some :: f a -> Some f\n@\n\nin few variants, and utilities to work with it.\n\nIf you are unsure which variant to use, use the one in \"Data.Some\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "hkd-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            ];
          buildable = true;
          };
        };
      };
    }