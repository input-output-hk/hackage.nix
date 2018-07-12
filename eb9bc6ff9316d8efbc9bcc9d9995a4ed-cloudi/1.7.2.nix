{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "cloudi";
          version = "1.7.2";
        };
        license = "MIT";
        copyright = "2017 Michael Truog";
        maintainer = "mjtruog@gmail.com";
        author = "Michael Truog";
        homepage = "https://github.com/CloudI/cloudi_api_haskell";
        url = "";
        synopsis = "Haskell CloudI API";
        description = "Haskell CloudI API";
        buildType = "Simple";
      };
      components = {
        "cloudi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.zlib
          ];
        };
      };
    }