{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "base-unicode-symbols";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Unicode alternatives for common functions and operators";
      description = "This package defines new symbols for a number of functions and\noperators in the base package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.\n\nOriginal idea by P&#xE9;ter Divi&#xE1;nszky.";
      buildType = "Simple";
    };
    components = {
      "base-unicode-symbols" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }