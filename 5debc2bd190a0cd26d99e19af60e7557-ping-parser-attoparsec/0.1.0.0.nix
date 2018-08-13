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
      specVersion = "1.10";
      identifier = {
        name = "ping-parser-attoparsec";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "(c) 2017, Fernando Rincon Martin";
      maintainer = "frm.rincon@gmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/frincon/ping-parser-attoparsec";
      url = "";
      synopsis = "Attoparsec parsers of ping utility";
      description = "Attoparsec parsers of the output of ping utility. Currently there is only\none implementation for the Win32 version of ping and only support IPv4.";
      buildType = "Simple";
    };
    components = {
      "ping-parser-attoparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.placeholders)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.iproute)
        ];
      };
      exes = {
        "ping-parser-attoparsec-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ping-parser-attoparsec)
            (hsPkgs.placeholders)
          ];
        };
      };
      tests = {
        "ping-parser-attoparsec-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ping-parser-attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.attoparsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-text)
            (hsPkgs.iproute)
          ];
        };
      };
    };
  }