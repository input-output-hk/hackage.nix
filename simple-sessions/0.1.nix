{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "simple-sessions";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tov@ccs.neu.edu";
        author = "Jesse A. Tov <tov@ccs.neu.edu>";
        homepage = "http://www.ccs.neu.edu/~tov/session-types";
        url = "";
        synopsis = "A simple implementation of session types";
        description = "This library is based on the session types implementation\nfrom \"Haskell Session Types with Almost No Class,\" from the 2008\nHaskell Symposium.  For a full-featured session types library,\nsee the sessions package.";
        buildType = "Simple";
      };
      components = {
        simple-sessions = {
          depends  = [
            hsPkgs.base
            hsPkgs.category-extras
          ];
        };
      };
    }