{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "parsely";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "naesten@gmail.com";
        author = "Samuel Bronson";
        homepage = "http://naesten.dyndns.org:8080/repos/parsely";
        url = "";
        synopsis = "";
        description = "Typeclasses for parsing monads, and some instances";
        buildType = "Custom";
      };
      components = {
        "parsely" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
      };
    }