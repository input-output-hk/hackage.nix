{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "porte";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sbahra@kerneled.org";
        author = "Samy Al Bahra";
        homepage = "";
        url = "";
        synopsis = "FreeBSD ports interface";
        description = "Haskell FreeBSD ports analysis library";
        buildType = "Simple";
      };
      components = {
        porte = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.stringsearch
          ];
        };
        exes = { porte = {}; };
      };
    }