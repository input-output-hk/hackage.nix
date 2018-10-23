{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wigner-symbols";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Phil Ruffwind";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/wigner-symbols";
      url = "";
      synopsis = "CG coefficients and Wigner symbols.";
      description = "Clebsch-Gordan coefficients and Wigner 3-j, 6-j, and 9-j\nsymbols.";
      buildType = "Simple";
    };
    components = {
      "wigner-symbols" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wigner-symbols)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wigner-symbols)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.primitive)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }