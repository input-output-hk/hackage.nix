{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "modern-uri";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/modern-uri";
        url = "";
        synopsis = "Modern library for working with URIs";
        description = "Modern library for working with URIs.";
        buildType = "Simple";
      };
      components = {
        modern-uri = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.megaparsec
            hsPkgs.profunctors
            hsPkgs.template-haskell
            hsPkgs.text
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.megaparsec
              hsPkgs.modern-uri
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          bench-speed = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.megaparsec
              hsPkgs.modern-uri
              hsPkgs.text
            ];
          };
          bench-memory = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.megaparsec
              hsPkgs.modern-uri
              hsPkgs.text
              hsPkgs.weigh
            ];
          };
        };
      };
    }