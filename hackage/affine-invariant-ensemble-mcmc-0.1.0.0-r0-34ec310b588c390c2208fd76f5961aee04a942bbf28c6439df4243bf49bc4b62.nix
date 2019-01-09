{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "affine-invariant-ensemble-mcmc";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/affine-invariant-ensemble-mcmc";
      url = "";
      synopsis = "General-purpose sampling";
      description = "A general-purpose sampling routine for badly-scaled distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.split)
          ];
        };
      };
    }