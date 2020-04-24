{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "RMP"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Binding to code that controls a Segway RMP";
      description = "This library provides an interface to a USB-connected Segway RMP.\n\nIt is based on code and information from <http://www.ai.sri.com/~vincent/segway.php>,\nand was tested on a Segway RMP 200.\n\nWARNING: The Segway RMP is a dangerous (and massive) device, use this library with care.\nThe library comes without warranty, and you may find the Segway running loose, harming people.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."allocated-processor" or ((hsPkgs.pkgs-errors).buildDepError "allocated-processor"))
          ];
        libs = [
          (pkgs."canlib" or ((hsPkgs.pkgs-errors).sysDepError "canlib"))
          (pkgs."ftd2xx" or ((hsPkgs.pkgs-errors).sysDepError "ftd2xx"))
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      exes = {
        "rmp-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."allocated-processor" or ((hsPkgs.pkgs-errors).buildDepError "allocated-processor"))
            ];
          libs = [
            (pkgs."canlib" or ((hsPkgs.pkgs-errors).sysDepError "canlib"))
            (pkgs."ftd2xx" or ((hsPkgs.pkgs-errors).sysDepError "ftd2xx"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = true;
          };
        "rmp-test-facedetect" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."allocated-processor" or ((hsPkgs.pkgs-errors).buildDepError "allocated-processor"))
            (hsPkgs."cv-combinators" or ((hsPkgs.pkgs-errors).buildDepError "cv-combinators"))
            (hsPkgs."HOpenCV" or ((hsPkgs.pkgs-errors).buildDepError "HOpenCV"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            ];
          libs = [
            (pkgs."canlib" or ((hsPkgs.pkgs-errors).sysDepError "canlib"))
            (pkgs."ftd2xx" or ((hsPkgs.pkgs-errors).sysDepError "ftd2xx"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      };
    }