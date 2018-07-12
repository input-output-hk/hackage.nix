{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zifter-cabal";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "http://cs-syd.eu";
        url = "";
        synopsis = "zifter-cabal";
        description = "zifter-cabal";
        buildType = "Simple";
      };
      components = {
        "zifter-cabal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.zifter
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.safe
          ];
        };
      };
    }