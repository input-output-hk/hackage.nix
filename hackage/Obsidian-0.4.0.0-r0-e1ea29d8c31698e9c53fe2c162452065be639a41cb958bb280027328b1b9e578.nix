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
      identifier = { name = "Obsidian"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2015 Joel Svensson \t\t  \t\t\t";
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
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."rdtsc" or (errorHandler.buildDepError "rdtsc"))
          (hsPkgs."value-supply" or (errorHandler.buildDepError "value-supply"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          ];
        buildable = true;
        };
      };
    }