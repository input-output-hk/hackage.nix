{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "coordinate"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2016 NICTA Limited\nCopyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/coordinate";
      url = "";
      synopsis = "A representation of latitude and longitude";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA representation of latitude and longitude";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."papa" or ((hsPkgs.pkgs-errors).buildDepError "papa"))
          ];
        buildable = true;
        };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."coordinate" or ((hsPkgs.pkgs-errors).buildDepError "coordinate"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }