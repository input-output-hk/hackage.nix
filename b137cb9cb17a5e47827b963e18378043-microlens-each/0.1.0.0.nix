{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-each";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "'each' for microlens";
        description = "This package contains @Each@ type class and the @each@ traversal.";
        buildType = "Simple";
      };
      components = {
        microlens-each = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
          ];
        };
      };
    }