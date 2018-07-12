{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pyfi";
          version = "0.4.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "russell.s.stewart@gmail.com";
        author = "Russell Stewart";
        homepage = "http://github.com/Russell91/pyfi";
        url = "";
        synopsis = "Call python inline from haskell";
        description = "PYthon Function Interface: Wrap python functions with haskell.";
        buildType = "Simple";
      };
      components = {
        "pyfi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.pureMD5
          ];
          pkgconfig = [
            pkgconfPkgs.python
          ];
        };
      };
    }