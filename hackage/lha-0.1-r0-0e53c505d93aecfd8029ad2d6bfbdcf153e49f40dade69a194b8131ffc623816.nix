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
      identifier = { name = "lha"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "bytbox@gmail.com";
      author = "Scott Lawrence";
      homepage = "https://github.com/bytbox/lha.hs";
      url = "";
      synopsis = "Data structures for the Les Houches Accord";
      description = "This package provides data structures for HEP events, as outlined by the Les Houches Accord (hep-ph/0109068v1)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
        ];
        buildable = true;
      };
    };
  }