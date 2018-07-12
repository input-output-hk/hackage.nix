{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ll-picosat";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Da.Waterworth@gmail.com";
        author = "Daniel Waterworth";
        homepage = "";
        url = "";
        synopsis = "";
        description = "dirt simple picosat bindings";
        buildType = "Simple";
      };
      components = {
        "ll-picosat" = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.picosat ];
        };
      };
    }