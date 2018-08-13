{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "flat-mcmc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://jtobin.github.com/flat-mcmc";
      url = "";
      synopsis = "Painless general-purpose sampling.";
      description = "Painless general-purpose sampling.";
      buildType = "Simple";
    };
    components = {
      "flat-mcmc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.mwc-random)
          (hsPkgs.vector)
          (hsPkgs.monad-par)
          (hsPkgs.monad-par-extras)
        ];
      };
    };
  }