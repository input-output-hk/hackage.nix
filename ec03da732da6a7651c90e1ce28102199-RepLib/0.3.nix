{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "RepLib";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Casinghino <ccasin@cis.upenn.edu>\nBrent Yorgey <byorgey@cis.upenn.edu>\nStephanie Weirich <sweirich@cis.upenn.edu>";
        author = "Stephanie Weirich";
        homepage = "http://code.google.com/p/replib/";
        url = "";
        synopsis = "Generic programming library with representation types";
        description = "Generic programming library providing structural\npolymorphism, simple programming with binders, and other features.";
        buildType = "Simple";
      };
      components = {
        RepLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }