{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quiver-interleave"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Interleave values from multiple Quivers";
      description = "Combine multiple Quivers into one.  Useful when merging\nvalues from multiple source.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."quiver" or ((hsPkgs.pkgs-errors).buildDepError "quiver"))
          ];
        buildable = true;
        };
      tests = {
        "interleave-tests" = {
          depends = [
            (hsPkgs."quiver-interleave" or ((hsPkgs.pkgs-errors).buildDepError "quiver-interleave"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quiver" or ((hsPkgs.pkgs-errors).buildDepError "quiver"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }