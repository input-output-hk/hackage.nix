{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "props"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alec@deviant-logic.net";
      author = "Alec Heller";
      homepage = "http://github.com/deviant-logic/props";
      url = "";
      synopsis = "Reusable quickcheck properties";
      description = "Properties of functions and relations, perhaps for use with quickcheck";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }