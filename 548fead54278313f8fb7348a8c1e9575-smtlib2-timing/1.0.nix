{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smtlib2-timing";
          version = "1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "guenther@forsyte.at";
        author = "Henning Günther <guenther@forsyte.at>";
        homepage = "";
        url = "";
        synopsis = "Get timing informations for SMT queries";
        description = "";
        buildType = "Simple";
      };
      components = {
        smtlib2-timing = {
          depends  = [
            hsPkgs.base
            hsPkgs.smtlib2
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.dependent-sum
          ];
        };
      };
    }