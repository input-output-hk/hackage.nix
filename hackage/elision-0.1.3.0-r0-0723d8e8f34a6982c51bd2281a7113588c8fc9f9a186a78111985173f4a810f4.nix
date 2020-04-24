{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elision"; version = "0.1.3.0"; };
      license = "BSD-2-Clause";
      copyright = "2016 Alex Crough";
      maintainer = "alex@crough.io";
      author = "Alex Crough";
      homepage = "http://github.com/crough/elision#readme";
      url = "";
      synopsis = "Arrows with holes.";
      description = "A framework for describing holes in transformations\nand impure computations purely.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elision" or ((hsPkgs.pkgs-errors).buildDepError "elision"))
            ];
          buildable = true;
          };
        };
      };
    }