{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "compact-mutable-vector"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold <rightfold@gmail.com>";
      author = "rightfold";
      homepage = "";
      url = "";
      synopsis = "Mutable vector with different GC characteristics";
      description = "Library for avoiding excessive mutable array traversals by the garbage\ncollector when you use compact regions for your elements.\n\nSee Haddock for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."compact" or ((hsPkgs.pkgs-errors).buildDepError "compact"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."compact" or ((hsPkgs.pkgs-errors).buildDepError "compact"))
            (hsPkgs."compact-mutable-vector" or ((hsPkgs.pkgs-errors).buildDepError "compact-mutable-vector"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }