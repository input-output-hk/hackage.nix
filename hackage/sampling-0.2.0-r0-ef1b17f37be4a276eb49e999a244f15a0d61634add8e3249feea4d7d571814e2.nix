{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sampling"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "https://github.com/jtobin/sampling";
      url = "";
      synopsis = "Sample values from collections.";
      description = "Basic sampling tools.\n\nExports variations on two simple functions for sampling from arbitrary\n'Foldable' collections:\n\n* 'sample', for sampling without replacement\n\n* 'resample', for sampling with replacement (i.e., a bootstrap)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.foldl)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "sampling-test" = { depends = [ (hsPkgs.base) (hsPkgs.sampling) ]; };
        };
      benchmarks = {
        "bench-sampling" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.sampling) ];
          };
        };
      };
    }