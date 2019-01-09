{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "church"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Sodality";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/exordium/church#readme";
      url = "";
      synopsis = "Automatically convert Generic instances to and from church representations";
      description = "This package provides a type 'ChurchRep' to generically construct\nthe type of the church representation.\nAdditionally, it provides a type class 'Church' which contains\na pair of functions for mapping back and forth between the two\nrepresentations.\nBoth the @ChurchRep@ and the @Church@ instance are be automatically constructed\nfor all types with a @Generic@ instance.\nBased on code by Danny Gratzer.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }