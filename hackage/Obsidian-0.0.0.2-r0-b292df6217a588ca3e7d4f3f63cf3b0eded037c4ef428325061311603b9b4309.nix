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
      identifier = { name = "Obsidian"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2013 Joel Svensson \t\t  \t\t\t";
      maintainer = "Joel Svensson<svenssonjoel@yahoo.se>";
      author = "Joel Svensson<svenssonjoel@yahoo.se>";
      homepage = "https://github.com/svenssonjoel/Obsidian";
      url = "";
      synopsis = "Embedded language for GPU Programming ";
      description = "Obsidian is an embedded language for general purpose programming targeting\nGPU's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."value-supply" or (errorHandler.buildDepError "value-supply"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }