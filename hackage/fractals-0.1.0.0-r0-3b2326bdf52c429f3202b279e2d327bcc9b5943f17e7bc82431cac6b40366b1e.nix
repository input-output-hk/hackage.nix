{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fractals"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Stephen Dekker";
      maintainer = "Stephen Dekker <steve.dekk@gmail.com>";
      author = "Stephen Dekker";
      homepage = "";
      url = "";
      synopsis = "A collection of useful fractal curve encoders";
      description = "A collection of efficient fractal curve encoders that are of general use\nfor creating spatial data structures.\n\nCurrently, the only encoder included is an implementation Butz's algorithm\nfor generating N-dimensional space-filling Hilbert curves.\n\nAn encoder for Morton (Z-order) curves is planned for a future release.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "property-tests" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.integer-gmp) ];
          };
        };
      };
    }