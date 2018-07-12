{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constaparser";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Andrew Martin";
        maintainer = "chessai1996@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/chessai/constaparser";
        url = "";
        synopsis = "Parse ByteStrings of a constant length.";
        description = "Parse constant-length ByteStrings, which allows\nfor some performance optimisations.\nYou can also convert from a 'Constaparser' to a\n'Parser' from Attoparsec.";
        buildType = "Simple";
      };
      components = {
        "constaparser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
      };
    }