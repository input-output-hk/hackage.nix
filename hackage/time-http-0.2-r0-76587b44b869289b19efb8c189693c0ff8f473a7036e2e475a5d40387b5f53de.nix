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
        name = "time-http";
        version = "0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho AT cielonegro DOT org>";
      author = "PHO <pho AT cielonegro DOT org>";
      homepage = "http://cielonegro.org/HTTPDateTime.html";
      url = "";
      synopsis = "Parse and format HTTP/1.1 Date and Time strings";
      description = "This package provides functionalities to parse and format\nvarious Date and Time formats allowed in HTTP\\/1.1 (RFC 2616).";
      buildType = "Simple";
    };
    components = {
      "time-http" = {
        depends  = [
          (hsPkgs.ascii)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-time-http" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.ascii)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-textual)
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.time)
          ];
        };
      };
    };
  }