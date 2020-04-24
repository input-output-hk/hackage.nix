{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Obsidian"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2015 Joel Svensson";
      maintainer = "Joel Svensson<svenssonjoel@yahoo.se>";
      author = "Joel Svensson<svenssonjoel@yahoo.se>";
      homepage = "https://github.com/svenssonjoel/Obsidian";
      url = "";
      synopsis = "Embedded language for GPU Programming";
      description = "Obsidian is an embedded language for general purpose programming targeting\nGPU's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."rdtsc" or ((hsPkgs.pkgs-errors).buildDepError "rdtsc"))
          (hsPkgs."value-supply" or ((hsPkgs.pkgs-errors).buildDepError "value-supply"))
          (hsPkgs."language-c-quote" or ((hsPkgs.pkgs-errors).buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          ];
        buildable = true;
        };
      };
    }