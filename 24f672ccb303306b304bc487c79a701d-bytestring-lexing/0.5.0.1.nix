{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bytestring-lexing";
          version = "0.5.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (c) 2012--2015 wren gayle romano, 2008--2011 Don Stewart";
        maintainer = "wren@community.haskell.org";
        author = "wren gayle romano, Don Stewart";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "Parse and produce literals efficiently from strict or lazy bytestrings.";
        description = "Parse and produce literals efficiently from strict or lazy bytestrings.\n\nSome benchmarks for this package can be found at:\n<http://community.haskell.org/~wren/bytestring-lexing/test/bench/html>";
        buildType = "Simple";
      };
      components = {
        bytestring-lexing = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }