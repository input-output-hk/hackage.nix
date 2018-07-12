{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sgf";
          version = "0.1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Toni Cebrián ancechu@gmail.com";
        author = "Daniel Wagner daniel@wagner-home.com";
        homepage = "https://github.com/tonicebrian/sgf";
        url = "";
        synopsis = "SGF (Smart Game Format) parser";
        description = "This is a parser for the go\\/igo\\/weiqi\\/baduk fragment of the SGF format.\nEncodings latin-1, utf-8, and ascii are supported, and the parser strives\nto be robust to minor errors, especially those made by the most common SGF\neditors.  There are plans to support other games and pretty-printing in\nfuture releases.";
        buildType = "Simple";
      };
      components = {
        "sgf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.extensible-exceptions
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.split
            hsPkgs.encoding
            hsPkgs.transformers
          ];
        };
      };
    }