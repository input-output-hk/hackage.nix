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
      specVersion = "2.2";
      identifier = { name = "optparse-applicative-dex"; version = "1.0.1"; };
      license = "ISC";
      copyright = "2025 Dino Morelli";
      maintainer = "dino@ui3.info";
      author = "Dino Morelli";
      homepage = "";
      url = "";
      synopsis = "Extra functions for working with optparse-applicative";
      description = "optparse-applicative is a fantastic library\n\nMy usage of it has often used the same features wrapped in a `parseOpts`\nfunction along with a version helper.\n\nThis package abstracts that code into a re-usable library, minimizing pasting\nbetween projects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }