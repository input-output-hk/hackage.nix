{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Obsidian"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2013 Joel Svensson";
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
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."value-supply" or ((hsPkgs.pkgs-errors).buildDepError "value-supply"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }