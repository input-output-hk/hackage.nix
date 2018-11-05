{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "multilinear-io";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear-io#readme";
      url = "";
      synopsis = "Input/output capability for multilinear package.";
      description = "Input/output capability for multilinear package <https://hackage.haskell.org/package/multilinear>. Supports various file formats: binary, CSV, JSON. More information available on GitHub: <https://github.com/ArturB/multilinear-io#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.csv-enumerator)
          (hsPkgs.either)
          (hsPkgs.multilinear)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "multilinear-io-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.multilinear)
            (hsPkgs.multilinear-io)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "multilinear-io-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.multilinear)
            (hsPkgs.multilinear-io)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }