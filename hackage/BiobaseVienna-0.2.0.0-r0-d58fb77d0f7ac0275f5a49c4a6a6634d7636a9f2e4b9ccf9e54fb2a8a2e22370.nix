{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "BiobaseVienna"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Import Vienna energy parameters";
      description = "Importer and Exporter for Vienna energy files. Allows\nconverting Turner parameter files to Vienna parameter files.\n\nThis is the 2011 post-library split version, hence not\ndeprecated anymore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."BiobaseTurner" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseXNA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseXNA"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "ViennaConverter" = {
          depends = [
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }