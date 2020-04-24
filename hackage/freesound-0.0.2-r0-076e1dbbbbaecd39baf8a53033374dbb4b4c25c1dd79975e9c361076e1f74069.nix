{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "freesound"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Stefan Kersten 2008";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://code.haskell.org/~StefanKersten/code/freesound";
      url = "";
      synopsis = "Access the Freesound Project database";
      description = "Access the Freesound Project database. The Freesound\nProject is a collaborative database of Creative Commons\nlicensed sounds.\n\n<http://www.freesound.org/>\n\n<http://www.creativecommons.org/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = { "freesound" = { buildable = true; }; };
      };
    }