{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpdft";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "k16.shikano@gmail.com";
        author = "Keiichiro Shikano";
        homepage = "https://github.com/k16shikano/hpdft";
        url = "";
        synopsis = "A tool for looking through PDF file using Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hpdft" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.zlib
            hsPkgs.utf8-string
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.file-embed
            hsPkgs.binary
          ];
        };
      };
    }