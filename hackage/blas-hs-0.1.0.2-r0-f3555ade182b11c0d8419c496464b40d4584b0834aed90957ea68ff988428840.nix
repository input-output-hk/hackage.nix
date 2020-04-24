{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "blas-hs"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/blas-hs";
      url = "";
      synopsis = "Low-level Haskell bindings to Blas.";
      description = "This package provides a complete low-level binding to\nBlas via the foreign function interface, allowing Haskell\nprograms to take advantage of optimized routines for\nvector and matrix operations in Haskell.  See the source\nrepository for more info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blas-hs" or ((hsPkgs.pkgs-errors).buildDepError "blas-hs"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          libs = [ (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas")) ];
          buildable = true;
          };
        };
      };
    }