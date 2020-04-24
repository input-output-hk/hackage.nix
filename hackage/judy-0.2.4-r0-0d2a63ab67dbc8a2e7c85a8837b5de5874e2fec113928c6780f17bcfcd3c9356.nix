{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "judy"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Don Stewart <dons@galois.com>";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Don Stewart";
      homepage = "http://github.com/mwotton/judy";
      url = "";
      synopsis = "Fast, scalable, mutable dynamic arrays, maps and hashes";
      description = "Fast, scalable, mutable dynamic arrays, maps and hashes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."Judy" or ((hsPkgs.pkgs-errors).sysDepError "Judy")) ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."judy" or ((hsPkgs.pkgs-errors).buildDepError "judy"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }