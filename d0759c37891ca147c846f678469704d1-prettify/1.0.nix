{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "prettify";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Haskell2010 structured text formatting";
        description = "A modern take on structured text formatting, also known as pretty-printing.\nBased on the classic pretty package by Hughes, Peyton-Jones et al.";
        buildType = "Simple";
      };
      components = {
        prettify = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.containers
          ];
        };
      };
    }