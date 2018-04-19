{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "attoparsec";
          version = "0.13.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/attoparsec";
        url = "";
        synopsis = "Fast combinator parsing for bytestrings and text";
        description = "A fast parser combinator library, aimed particularly at dealing\nefficiently with network protocols and complicated text/binary\nfile formats.";
        buildType = "Simple";
      };
      components = {
        attoparsec = {
          depends  = ([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.scientific
            hsPkgs.transformers
            hsPkgs.text
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.bytestring) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-unicode
              hsPkgs.scientific
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.vector
            ] ++ pkgs.lib.optionals (!compiler.isGhc) [
              hsPkgs.fail
              hsPkgs.semigroups
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.http-types
              hsPkgs.parsec
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
            ] ++ pkgs.lib.optionals (!compiler.isGhc) [
              hsPkgs.fail
              hsPkgs.semigroups
            ];
          };
        };
      };
    }