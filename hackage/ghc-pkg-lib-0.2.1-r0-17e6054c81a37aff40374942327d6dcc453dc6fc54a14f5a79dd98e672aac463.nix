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
      specVersion = "1.20";
      identifier = { name = "ghc-pkg-lib"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Thiago Arrais 2009";
      maintainer = "jp@moresmau.fr";
      author = "Thiago Arrais, JP Moresmau";
      homepage = "https://github.com/JPMoresmau/ghc-pkg-lib";
      url = "";
      synopsis = "Provide library support for ghc-pkg information";
      description = "A library that lists the installed packages in a given sandbox and/or in the global and user package databases";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
    };
  }