{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      no-netlib = false;
      no-accelerate = false;
      openblas = false;
      mkl = false;
      cblas = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "blas-hs"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2014 Phil Ruffwind";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/blas-hs";
      url = "";
      synopsis = "Low-level Haskell bindings to Blas.";
      description = "This package provides a complete low-level binding to Blas via the foreign\nfunction interface, allowing Haskell programs to take advantage of optimized\nroutines for vector and matrix operations in Haskell.\n\nMore information can be found at the\n<https://github.com/Rufflewind/blas-hs repository>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ];
        libs = (pkgs.lib).optional (flags.cblas) (pkgs."cblas" or ((hsPkgs.pkgs-errors).sysDepError "cblas")) ++ (if flags.mkl
          then [
            (pkgs."mkl_rt" or ((hsPkgs.pkgs-errors).sysDepError "mkl_rt"))
            (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
            (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
            ]
          else if flags.openblas
            then [
              (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
              ]
            else (pkgs.lib).optionals (!((system.isOsx || system.isOsx) && !flags.no-accelerate)) ((pkgs.lib).optional (!flags.no-netlib) (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))));
        frameworks = (pkgs.lib).optionals (!flags.mkl) ((pkgs.lib).optionals (!flags.openblas) ((pkgs.lib).optional ((system.isOsx || system.isOsx) && !flags.no-accelerate) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"))));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blas-hs" or ((hsPkgs.pkgs-errors).buildDepError "blas-hs"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }