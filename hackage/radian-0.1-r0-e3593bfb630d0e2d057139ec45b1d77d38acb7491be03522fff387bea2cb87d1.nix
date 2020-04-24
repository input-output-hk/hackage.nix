{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "radian"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited\nCopyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/radian";
      url = "";
      synopsis = "Isomorphisms for measurements that use radians.";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nIsomorphisms for measurements that use radians.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."radian" or ((hsPkgs.pkgs-errors).buildDepError "radian"))
            ];
          buildable = true;
          };
        };
      };
    }