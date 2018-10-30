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
      specVersion = "1.9.2";
      identifier = {
        name = "ohloh-hs";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Frank S. Thomas <frank@timepit.eu>";
      author = "Frank S. Thomas <frank@timepit.eu>";
      homepage = "https://github.com/fthomas/ohloh-hs";
      url = "";
      synopsis = "Interface to the Ohloh API";
      description = "ohloh-hs is an interface to the Ohloh API (<http://www.ohloh.net>), which\nprovides access to the data of the Ohloh open source directory. It consists\nmainly of simple data types for the items exposed by the API and\ncorresponding \"Text.XML.HXT.Arrow.Pickle\" pickler functions in order to\nconvert those types from\\/to XML easily.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-lens)
          (hsPkgs.hxt)
          (hsPkgs.text-format-simple)
        ];
      };
      exes = {
        "cmdoh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-lens)
            (hsPkgs.hxt)
            (hsPkgs.hxt-curl)
            (hsPkgs.cmdargs)
            (hsPkgs.pretty-show)
            (hsPkgs.text-format-simple)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-lens)
            (hsPkgs.hxt)
            (hsPkgs.text-format-simple)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }