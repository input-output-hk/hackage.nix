{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "subzero"; version = "0.1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "Copyright: (c) 2017-2017 Tristan Wibberley. All Rights Reserved.";
      maintainer = "tristan.wibberley@gmail.com";
      author = "Tristan Wibberley";
      homepage = "https://github.com/code5hot/subzero#readme";
      url = "";
      synopsis = "Helps when going \"seed values\" -> alternatives and optional -> answers";
      description = ">\nTypes to support turning structured collections of seed values\ninto the same structures with alternatives along with some functions\nfor regular uses.\nPlease see README.md for more information";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "subzero-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."subzero" or ((hsPkgs.pkgs-errors).buildDepError "subzero"))
            ];
          buildable = true;
          };
        };
      };
    }