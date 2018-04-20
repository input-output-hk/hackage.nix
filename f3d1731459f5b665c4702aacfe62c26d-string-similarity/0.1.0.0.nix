{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "string-similarity";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "http://github.com/mwotton/string-similarity";
        url = "";
        synopsis = "longest common substring";
        description = "algorithms for finding the longest common substring in a set of documents";
        buildType = "Simple";
      };
      components = {
        string-similarity = {
          depends  = [
            hsPkgs.base
            hsPkgs.suffixtree
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.string-similarity
            ];
          };
        };
        benchmarks = {
          bench-lcs = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.string-similarity
            ];
          };
        };
      };
    }