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
      specVersion = "1.8";
      identifier = { name = "hyper-extra"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Heinrich Apfelmus 2016-2017";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "";
      url = "";
      synopsis = "Display instances for the HyperHaskell graphical Haskell interpreter";
      description = "This package is part of the /HyperHaskell/ project and provides\nvisual representations for various data types, in particular\ndiagrams from the @diagrams@ package.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."svg-builder" or (errorHandler.buildDepError "svg-builder"))
          (hsPkgs."hyper" or (errorHandler.buildDepError "hyper"))
        ];
        buildable = true;
      };
    };
  }