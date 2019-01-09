{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HoleyMonoid"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2009 Martijn van Steenbergen";
      maintainer = "Martijn van Steenbergen <martijn@van.steenbergen.nl>";
      author = "Martijn van Steenbergen";
      homepage = "http://code.google.com/p/monoid-cont/";
      url = "";
      synopsis = "Monoids with holes.";
      description = "The 'HoleyMonoid' allows building monoidal values of which certain components are to be filled in later. For example:\n\n> > let holey = now \"x = \"\n>             . later show\n>             . now \", y = \"\n>             . later show\n> > run holey 3 5\n> \"x = 3, y = 5\"";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.base) ]; };
      };
    }