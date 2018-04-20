{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-compression";
          version = "0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "http://xy30.com";
        url = "";
        synopsis = "compress files";
        description = "A program to compress a file";
        buildType = "Simple";
      };
      components = {
        haskell-compression = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.bimap
            hsPkgs.boolean-list
          ];
        };
        exes = {
          hs-compress = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.bimap
              hsPkgs.boolean-list
            ];
          };
        };
      };
    }