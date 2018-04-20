{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zifter-stack";
          version = "0.0.0.9";
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
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.process
            hsPkgs.safe
            hsPkgs.zifter
          ];
        };
        tests = {
          zifter-stack-test = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.process
              hsPkgs.safe
              hsPkgs.stm
              hsPkgs.zifter
              hsPkgs.zifter-stack
            ];
          };
        };
      };
    }