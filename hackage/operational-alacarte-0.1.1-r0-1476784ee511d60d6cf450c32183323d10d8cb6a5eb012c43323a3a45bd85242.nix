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
      identifier = { name = "operational-alacarte"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Emil Axelsson, Heinrich Apfelmus";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/operational-alacarte";
      url = "";
      synopsis = "A version of Operational suitable for extensible EDSLs";
      description = "A version of Operational \\[1\\] suitable for EDSLs\nextensible via data types à la carte.\n\nMore information is found in the documentation of\n\"Control.Monad.Operational.Higher\".\n\n\\[1\\] <http://hackage.haskell.org/package/operational>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "Examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          ];
          buildable = true;
        };
      };
    };
  }