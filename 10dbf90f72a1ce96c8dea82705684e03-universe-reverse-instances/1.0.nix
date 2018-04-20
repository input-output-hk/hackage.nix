{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "universe-reverse-instances";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Daniel Wagner 2014";
        maintainer = "me@dmwit.com";
        author = "Daniel Wagner";
        homepage = "https://github.com/dmwit/universe";
        url = "";
        synopsis = "instances of standard classes that are made possible by enumerations";
        description = "";
        buildType = "Simple";
      };
      components = {
        universe-reverse-instances = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.universe-instances-base
          ];
        };
      };
    }