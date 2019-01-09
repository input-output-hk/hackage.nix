{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multilinear-io"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear-io#readme";
      url = "";
      synopsis = "Conduit-based input/output capability for multilinear package.";
      description = "Conduit-based input & output capability for multilinear package <https://hackage.haskell.org/package/multilinear>. Supports various file formats: binary, CSV, JSON. More information available on GitHub: <https://github.com/ArturB/multilinear-io#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.conduit)
          (hsPkgs.either)
          (hsPkgs.multilinear)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          ];
        };
      tests = {
        "binary" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.multilinear)
            (hsPkgs.multilinear-io)
            (hsPkgs.transformers)
            ];
          };
        "csv" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.multilinear)
            (hsPkgs.multilinear-io)
            (hsPkgs.transformers)
            ];
          };
        "json" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.multilinear)
            (hsPkgs.multilinear-io)
            (hsPkgs.transformers)
            ];
          };
        };
      benchmarks = {
        "multilinear-io-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.multilinear)
            (hsPkgs.multilinear-io)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }