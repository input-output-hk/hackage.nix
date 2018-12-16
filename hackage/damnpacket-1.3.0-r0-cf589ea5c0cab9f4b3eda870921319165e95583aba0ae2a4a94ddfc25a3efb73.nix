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
        name = "damnpacket";
        version = "1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "";
      url = "";
      synopsis = "Parsing dAmn messages";
      description = "This module provides a datatype and convenience functions for parsing,\nmanipulating, and rendering deviantART Message Network messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.bytestring)
          (hsPkgs.fail)
          (hsPkgs.html-entity)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift-instances)
        ];
      };
      tests = {
        "parse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.damnpacket)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }