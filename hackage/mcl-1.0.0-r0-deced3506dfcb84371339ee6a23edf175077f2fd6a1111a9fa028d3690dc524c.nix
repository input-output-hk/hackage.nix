{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mcl"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 IOHK";
      maintainer = "andrzej@well-typed.com";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Bindings to mcl, a generic and fast pairing-based cryptography library";
      description = "Base library: https://github.com/herumi/mcl";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.groups)
          (hsPkgs.integer-gmp)
          (hsPkgs.primitive)
          ];
        libs = [ (pkgs."crypto") (pkgs."gmpxx") (pkgs."mcl") (pkgs."stdc++") ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.mcl)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.groups)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.mcl)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.groups)
            ];
          };
        };
      };
    }