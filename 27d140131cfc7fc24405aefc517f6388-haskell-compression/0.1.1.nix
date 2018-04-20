{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskell-compression";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "codekinder.com";
        url = "";
        synopsis = "";
        description = "Compress files";
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