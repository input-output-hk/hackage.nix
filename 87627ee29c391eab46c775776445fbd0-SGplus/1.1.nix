{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "SGplus";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009, Neil Brown";
        maintainer = "jeremy@praeceptamachinae.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "(updated) Small geometry library for dealing with vectors and collision detection";
        description = "Updated original SG to work with modern GHC.\nA small geometry library for dealing with\nvectors, points, lines, simple shapes, and their\nvarious intersection tests.  See also the SGdemo project\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SGdemo>)\nfor an example of using the module.";
        buildType = "Simple";
      };
      components = {
        "SGplus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }