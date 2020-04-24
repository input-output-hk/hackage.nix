{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { parallel = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "matrix-sized"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "https://github.com/kaizhang/matrix-sized#readme";
      url = "";
      synopsis = "Haskell matrix library with interface to C++ linear algebra libraries.";
      description = "A Haskell implementation of matrices with statically known sizes. The library also comes with the bindings to high performance C++ linear algebra libraries such as Eigen and Spectra.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."matrix-sized" or ((hsPkgs.pkgs-errors).buildDepError "matrix-sized"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }