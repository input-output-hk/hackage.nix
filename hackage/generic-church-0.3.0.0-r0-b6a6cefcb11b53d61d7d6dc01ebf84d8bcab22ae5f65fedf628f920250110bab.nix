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
        name = "generic-church";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "Automatically convert Generic instances to and from church representations";
      description = "This package provides a type to generically construct the type of the church\nrepresentation.\nAdditionally, it provides a type class @ChurchRep@ which contains\na pair of functions for mapping back and forth between the two\nrepresentations.\n\nBoth the type and the @ChurchRep@ instance are be automatically constructed\nfor all types with a @Generic@ instance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "test-generic-church" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.generic-church)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }