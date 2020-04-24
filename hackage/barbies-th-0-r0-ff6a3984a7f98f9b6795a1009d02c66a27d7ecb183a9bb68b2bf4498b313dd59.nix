{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "barbies-th"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "";
      url = "";
      synopsis = "Create strippable HKD via TH";
      description = "Please see Data.Barbie.TH";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."barbies" or ((hsPkgs.pkgs-errors).buildDepError "barbies"))
          ];
        buildable = true;
        };
      tests = {
        "th" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."barbies" or ((hsPkgs.pkgs-errors).buildDepError "barbies"))
            (hsPkgs."barbies-th" or ((hsPkgs.pkgs-errors).buildDepError "barbies-th"))
            ];
          buildable = true;
          };
        };
      };
    }