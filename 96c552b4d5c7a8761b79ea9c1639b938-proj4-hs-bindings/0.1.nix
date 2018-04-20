{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "proj4-hs-bindings";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2012–2013 Pavel M. Penev, LaRouche Policy Institute";
        maintainer = "Pavel M. Penev <pavpen@gmail.com>";
        author = "Pavel M. Penev <pavpen@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings for the Proj4 C dynamic library.";
        description = "Haskell bindings for the Proj.4 map projection C library.\n\nYou need to have Proj.4 already installed as a shared library.\n\nExample transformations (from <http://www.mysqludf.org/lib_mysqludf_fPROJ4/>):\n\n> import Geo.Proj4\n>\n> lon0 = 22.350 * pi / 180 -- Test longitude in radians.\n> lat0 = 40.084 * pi / 180 -- Test latitude in radians.\n> alt0 = 2843 -- Test altitude in meters.\n>\n> -- | Test projection:\n> pj = newProjection \"+proj=utm +zone=34\"\n>\n> -- | Another test (null, e.g. cylindrical) projction:\n> pj0 = newProjection \"+proj=latlong +ellps=clrk66\"\n>\n> -- | A projection of our test longitude & latitude, using @pj:\n> (x, y) = pjFwd pj (lon0, lat0)\n>\n> -- | An inverse projection from (x, y) to (longitude, latitude):\n> (lon, lat) = pjInv pj (x, y)\n>\n> -- | Convert our test position from one projection to another (pj0 -> pj):\n> (x2, y2, z2) = pjTransformPt pj0 pj (lon0, lat0, alt0)\n>\n> main :: IO ()\n> main = do\n>     putStrLn \$ \"(x, y): \" ++ (show (x, y))\n>     putStrLn \$ \"(lon, lat): \" ++ (show (lon * 180 / pi, lat * 180 / pi))\n>     putStrLn \$ \"(x, y, z): \" ++ (show \$ (x2, y2, z2))\n>     return ()\n\nYou should see the following when you compile and run the above:\n\n> (x, y): (615096.1096381239,4437953.6592040695)\n> (lon, lat): (22.350000000000662,40.083999999999584)\n> (x, y, z): (615096.1096381239,4437953.6592040695,2843.0)";
        buildType = "Simple";
      };
      components = {
        proj4-hs-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
          libs = [ pkgs.proj ];
        };
      };
    }