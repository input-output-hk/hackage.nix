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
      identifier = { name = "uzbl-with-source"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "http://github.com/Fuuzetsu/uzbl-with-source";
      url = "";
      synopsis = "Utility function for reading a source of loaded uzbl pages.";
      description = "Utility function for reading a source of loaded uzbl\npages. It attemps to read the UZBL_SOCKET variable passed in\nby uzbl during runtime and extract source by probing it.\nThe program ‘socat’ is a run-time dependency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }