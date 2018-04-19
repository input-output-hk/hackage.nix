{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gjk";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "firas@zaidan.de";
        author = "Firas Zaidan";
        homepage = "https://github.com/zaidan/gjk#readme";
        url = "";
        synopsis = "Gilbert-Johnson-Keerthi (GJK) collision detection algorithm";
        description = "This package implements the Gilbert-Johnson-Keerthi (GJK) collision detection algorithm for 2D convex objects. It is quite efficient, usually converging within one or two iterations.";
        buildType = "Simple";
      };
      components = {
        gjk = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.gjk
              hsPkgs.hspec
            ];
          };
        };
      };
    }