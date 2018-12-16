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
      specVersion = "1.6";
      identifier = {
        name = "timing-convenience";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Mike Burns";
      maintainer = "mike@mike-burns.com";
      author = "Mike Burns";
      homepage = "";
      url = "";
      synopsis = "Convenient functions for getting times.";
      description = "Inspired by Rails' ActiveSupport, this package provides\nnice looking convenience functions for getting a time and\ndate, offset from today.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.time)
          (hsPkgs.base)
        ];
      };
    };
  }