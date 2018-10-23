{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "groups";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Nathan van Doorn";
      maintainer = "nvd1234@gmail.com";
      author = "Nathan \"Taneb\" van Doorn";
      homepage = "";
      url = "";
      synopsis = "Haskell 98 groups";
      description = "Haskell 98 groups. A group is a monoid with invertibility.";
      buildType = "Simple";
    };
    components = {
      "groups" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }