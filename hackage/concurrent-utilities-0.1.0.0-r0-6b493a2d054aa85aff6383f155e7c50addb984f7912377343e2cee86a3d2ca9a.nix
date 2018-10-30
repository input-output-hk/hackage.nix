{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concurrent-utilities";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "University of Twente 2015 | Sebastiaan la Fleur 2015";
      maintainer = "sebastiaan.la.fleur@gmail.com";
      author = "Sebastiaan la Fleur";
      homepage = "-";
      url = "";
      synopsis = "More utilities and broad-used datastructures for concurrency.";
      description = "More utilities and broad-used datastructures for concurrency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }