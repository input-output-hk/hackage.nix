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
        name = "integreat";
        version = "0.2.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2017 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/integreat#readme";
      url = "";
      synopsis = "Integrate different assays.";
      description = "Integrate difference data sources and optionally perform differential integration.";
      buildType = "Simple";
    };
    components = {
      "integreat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.foldl)
          (hsPkgs.hmatrix)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.parallel)
          (hsPkgs.random-fu)
          (hsPkgs.rank-product)
          (hsPkgs.sequence)
          (hsPkgs.statistics)
          (hsPkgs.stringsearch)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      exes = {
        "integreat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.integreat)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }