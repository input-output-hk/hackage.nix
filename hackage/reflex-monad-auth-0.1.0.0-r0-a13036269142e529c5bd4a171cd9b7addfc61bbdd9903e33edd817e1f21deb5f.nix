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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-monad-auth"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Anton Gushcha";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Utilities to split reflex app to authorized and not authorized contexts";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-external-ref" or (errorHandler.buildDepError "reflex-external-ref"))
        ];
        buildable = true;
      };
      exes = {
        "reflex-monad-auth-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
            (hsPkgs."reflex-monad-auth" or (errorHandler.buildDepError "reflex-monad-auth"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }