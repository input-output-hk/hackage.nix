{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-prim-bits";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2017 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/githubuser/hw-prim-bits#readme";
      url = "";
      synopsis = "Primitive support for bit manipulation";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-prim-bits" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "hw-prim-bits-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hw-prim-bits)
          ];
        };
      };
      tests = {
        "hw-prim-bits-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim-bits)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.hw-prim-bits)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }