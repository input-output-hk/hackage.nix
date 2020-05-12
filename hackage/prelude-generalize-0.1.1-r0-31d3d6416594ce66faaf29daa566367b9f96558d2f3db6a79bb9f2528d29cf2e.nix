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
      specVersion = "1.2";
      identifier = { name = "prelude-generalize"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Another kind of alternate Prelude file";
      description = "\nThis is a prelude file with some additional functions and\nmore generalize of some functions, including list\noperation, monad operation, numbers, bitwise, and a few\nmore compositions. It also imports some other modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          ];
        buildable = true;
        };
      };
    }