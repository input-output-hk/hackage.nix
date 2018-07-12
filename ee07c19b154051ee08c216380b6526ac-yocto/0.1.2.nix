{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yocto";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ajg";
        author = "Alvaro J. Genial";
        homepage = "https://github.com/ajg/yocto";
        url = "";
        synopsis = "A Minimal JSON Parser & Printer for Haskell";
        description = "Hassle-free, fast, lossless encoding & decoding of JSON.";
        buildType = "Simple";
      };
      components = {
        "yocto" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
      };
    }