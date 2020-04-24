{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sparse-lin-alg"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexey.alekhin@me.com";
      author = "Alexey Alekhin";
      homepage = "http://github.com/laughedelic/sparse-lin-alg";
      url = "";
      synopsis = "Small library for effective linear algebra on sparse matrices";
      description = "Sparse matrices and vectors are represented using IntMaps, which store non-zero values. There are some useful functions for computations on them. Also some linear algebra algorithms will be included. At the moment, the only is reduction of the matrix to the staircase form.";
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