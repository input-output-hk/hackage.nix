{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring-lexing";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Don Stewart 2008";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/bytestring-lexing";
        url = "";
        synopsis = "Parse literals efficiently from bytestrings";
        description = "Parse literals efficiently from bytestrings";
        buildType = "Simple";
      };
      components = {
        bytestring-lexing = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.array
            ]
            else [ hsPkgs.base ];
        };
      };
    }