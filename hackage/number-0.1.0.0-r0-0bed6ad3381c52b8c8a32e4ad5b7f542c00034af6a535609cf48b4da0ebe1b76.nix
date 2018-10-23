{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "number";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2015";
      maintainer = "micheleguerinirocco@me.com";
      author = "Michele Guerini Rocco";
      homepage = "";
      url = "";
      synopsis = "A library for real numbers";
      description = "Data.Number is an attempt to give an almost complete\nrepresentation and arithmetics to real numbers without\nprecision loss using continued fractions and Gosper’s algorithms.";
      buildType = "Simple";
    };
    components = {
      "number" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }