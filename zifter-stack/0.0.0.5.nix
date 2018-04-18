{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zifter-stack";
          version = "0.0.0.5";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "http://cs-syd.eu";
        url = "";
        synopsis = "zifter-stack";
        description = "zifter-stack";
        buildType = "Simple";
      };
      components = {
        zifter-stack = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
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