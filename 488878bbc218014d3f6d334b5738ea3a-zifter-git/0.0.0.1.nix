{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zifter-git";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "http://cs-syd.eu";
        url = "";
        synopsis = "zifter-git";
        description = "zifter-git";
        buildType = "Simple";
      };
      components = {
        zifter-git = {
          depends  = [
            hsPkgs.base
            hsPkgs.zifter
            hsPkgs.process
            hsPkgs.path
          ];
        };
      };
    }