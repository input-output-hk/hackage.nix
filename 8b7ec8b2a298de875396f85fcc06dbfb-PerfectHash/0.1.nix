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
      specVersion = "1.2";
      identifier = {
        name = "PerfectHash";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A perfect hashing library for mapping bytestrings to values.";
      description = "A perfect hashing library for mapping bytestrings to values.\nInsertion is not supported (by design): this is just a binding\nto the C-based CMPH library (http://cmph.sf.net). Only fromList\nand lookup operations are supported, but in many circumstances\nthis is all that's required.";
      buildType = "Simple";
    };
    components = {
      "PerfectHash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.digest)
          (hsPkgs.array)
          (hsPkgs.time)
        ];
        libs = [ (pkgs.cmph) ];
      };
      exes = {
        "benchmark" = {
          libs = [ (pkgs.cmph) ];
        };
        "benchmark_trie" = {
          depends  = [
            (hsPkgs.bytestring-trie)
          ];
          libs = [ (pkgs.cmph) ];
        };
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
          libs = [ (pkgs.cmph) ];
        };
      };
    };
  }