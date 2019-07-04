{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "simple-enumeration"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Brent Yorgey";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "https://github.com/byorgey/enumeration#readme";
      url = "";
      synopsis = "Finite or countably infinite sequences of values.";
      description = "Finite or countably infinite sequences of values,\nsupporting efficient indexing and random sampling.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.integer-gmp) ]; };
      tests = {
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }