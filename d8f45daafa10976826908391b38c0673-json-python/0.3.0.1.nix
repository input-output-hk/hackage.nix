{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-python";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "russell.s.stewart@gmail.com";
        author = "Russell Stewart";
        homepage = "http://stewart.guru";
        url = "";
        synopsis = "Call python inline from haskell";
        description = "WARNING: Project in alpha. Call python from haskell with ease.";
        buildType = "Simple";
      };
      components = {
        json-python = {
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