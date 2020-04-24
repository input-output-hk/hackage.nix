{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sparse-lin-alg"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexey.alekhin@me.com";
      author = "Alexey Alekhin";
      homepage = "http://github.com/laughedelic/sparse-lin-alg";
      url = "";
      synopsis = "Effective linear algebra on sparse matrices";
      description = "Sparse matrices and vectors are represented using IntMaps, which store non-zero values. This library provides some useful functions for computations on them. Also some linear algebra algorithms are included. At the moment, they work only on integer domain.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }