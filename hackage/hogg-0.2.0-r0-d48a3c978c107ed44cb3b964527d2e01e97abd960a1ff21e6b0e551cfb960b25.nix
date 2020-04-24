{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hogg"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Conrad Parker, 2006";
      maintainer = "conradp@cse.unsw.edu.au";
      author = "Conrad Parker";
      homepage = "http://www.annodex.net/~conrad/software/hogg.html";
      url = "";
      synopsis = "Library and tools to manipulate the Ogg container format";
      description = "The HOgg package provides a commandline tool for manipulating Ogg files.\nIt supports chained and multiplexed Ogg bitstreams and Ogg Skeleton.\nHOgg also includes a library that may be used by other packages for handling\nthe Ogg container format.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fps" or ((hsPkgs.pkgs-errors).buildDepError "fps"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      exes = {
        "hogg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fps" or ((hsPkgs.pkgs-errors).buildDepError "fps"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "ListMergeTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fps" or ((hsPkgs.pkgs-errors).buildDepError "fps"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }