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
      identifier = { name = "ytl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Isaac van Bakel";
      maintainer = "ivb@vanbakel.io";
      author = "Isaac van Bakel";
      homepage = "https://github.com/ivanbakel/ytl#readme";
      url = "";
      synopsis = "mtl-style transformations for Yesod sites";
      description = "A library of transformers for extending the behaviour of\nYesod sites in an mtl-style API, through transformations\nof the foundation site.\n\nThis package contains:\n\n* An API for declaring and using site transformers,\nwhich modify the behaviour of a Yesod site while still\nallowing it to be used with existing Yesod code, until\nmonad transformers\n\n* Some useful site transformers and their corresponding\nAPIs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      };
    }