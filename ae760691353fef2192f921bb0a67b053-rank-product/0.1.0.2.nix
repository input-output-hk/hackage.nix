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
      specVersion = "1.10";
      identifier = {
        name = "rank-product";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2017 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/rank-product#readme";
      url = "";
      synopsis = "Find the rank product of a data set.";
      description = "Find the rank product of a data set and get the p-value from a permutation test.";
      buildType = "Simple";
    };
    components = {
      "rank-product" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random-fu)
        ];
      };
    };
  }