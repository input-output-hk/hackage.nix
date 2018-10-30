{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
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
      identifier = {
        name = "blas-hs";
        version = "0.1.1.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.storable-complex)
        ];
        libs = pkgs.lib.optional (flags.cblas) (pkgs."cblas") ++ (if flags.mkl
          then [
            (pkgs."mkl_rt")
            (pkgs."pthread")
            (pkgs."m")
          ]
          else if flags.openblas
            then [ (pkgs."openblas") ]
            else pkgs.lib.optionals (!((system.isOsx || system.isOsx) && !flags.no-accelerate)) (pkgs.lib.optional (!flags.no-netlib) (pkgs."blas")));
        frameworks = pkgs.lib.optionals (!flags.mkl) (pkgs.lib.optionals (!flags.openblas) (pkgs.lib.optional ((system.isOsx || system.isOsx) && !flags.no-accelerate) (pkgs."Accelerate")));
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blas-hs)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }