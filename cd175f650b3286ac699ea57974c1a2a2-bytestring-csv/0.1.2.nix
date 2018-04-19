{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring-csv";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Don Stewart 2008";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/bytestring-csv";
        url = "";
        synopsis = "Parse CSV formatted data efficiently";
        description = "Parse CSV formatted data efficiently";
        buildType = "Simple";
      };
      components = {
        bytestring-csv = {
          depends  = [
            hsPkgs.dlist
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }