{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pyfi";
          version = "0.4.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "russell.s.stewart@gmail.com";
        author = "Russell Stewart";
        homepage = "http://github.com/Russell91/json-python";
        url = "";
        synopsis = "Call python inline from haskell";
        description = "WARNING: Project in alpha. Call python from haskell with ease.";
        buildType = "Simple";
      };
      components = {
        pyfi = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.pureMD5
          ];
        };
      };
    }