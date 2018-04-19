{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "RepLib";
          version = "0.2.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Chris Casinghino <ccasin@cis.upenn.edu>\nBrent Yorgey <byorgey@cis.upenn.edu>\nStephanie Weirich <sweirich@cis.upenn.edu>";
        author = "Stephanie Weirich";
        homepage = "http://www.cis.upenn.edu/~sweirich/RepLib";
        url = "";
        synopsis = "Generic programming library with representation types";
        description = "Generic programming library providing structural\npolymorphism and other features.";
        buildType = "Simple";
      };
      components = {
        RepLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }