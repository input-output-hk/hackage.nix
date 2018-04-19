{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "alloy";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2008-2009, 2012 University of Kent";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown and Adam Sampson";
        homepage = "";
        url = "";
        synopsis = "Generic programming library";
        description = "Alloy is a generic programming library for performing traversals\nof data and applying specific operations to certain types.  More\ninformation is available in the tutorial\n(<http://twistedsquare.com/Alloy-Tutorial.pdf>) and the draft\npaper (<http://twistedsquare.com/Alloy.pdf>).";
        buildType = "Simple";
      };
      components = {
        alloy = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.syb
            hsPkgs.vector
          ];
        };
      };
    }