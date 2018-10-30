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
        name = "timezone-olson-th";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jon.petter.bergman@gmail.com";
      author = "Petter Bergman";
      homepage = "http://github.com/jonpetterbergman/timezone-olson-th";
      url = "";
      synopsis = "Load TimeZoneSeries from an Olson file at compile time.";
      description = "Template Haskell to load a TimeZoneSeries from an Olson file at compile time.\nFor Example:";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.timezone-olson)
          (hsPkgs.timezone-series)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }