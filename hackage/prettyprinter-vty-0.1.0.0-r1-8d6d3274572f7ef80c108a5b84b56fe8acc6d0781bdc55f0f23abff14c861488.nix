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
      identifier = { name = "prettyprinter-vty"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "2017 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "";
      url = "";
      synopsis = "prettyprinter backend for vty";
      description = "prettyprinter backend for vty";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      };
    }