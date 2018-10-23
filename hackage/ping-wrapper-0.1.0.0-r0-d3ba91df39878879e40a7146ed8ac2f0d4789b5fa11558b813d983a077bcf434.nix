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
        name = "ping-wrapper";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "(c) 2017, Fernando Rincon Martin";
      maintainer = "frm.rincon@gmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/frincon/ping-wrapper";
      url = "";
      synopsis = "Haskell Ping wrapper";
      description = "This utility is a wrapper for ping. Currently it is only implemented the\nwin32 and it will raise an exception in other systems.";
      buildType = "Simple";
    };
    components = {
      "ping-wrapper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ping-parser-attoparsec)
          (hsPkgs.attoparsec)
          (hsPkgs.placeholders)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.either)
        ];
      };
      exes = {
        "ping-wrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ping-wrapper)
            (hsPkgs.optparse-generic)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "ping-wrapper-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ping-wrapper)
          ];
        };
      };
    };
  }