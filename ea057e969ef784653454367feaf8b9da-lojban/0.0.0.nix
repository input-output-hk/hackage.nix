{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lojban";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done <chrisdone@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Useful utilities for the Lojban language";
        description = "Some utilities such as querying Jbovlaste XML\nexports for gismu, gloss, rafsi, etc. and\nlujvo-decomposition. More stuff to come.";
        buildType = "Simple";
      };
      components = {
        "lojban" = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.strict
            hsPkgs.parsec
          ];
        };
      };
    }