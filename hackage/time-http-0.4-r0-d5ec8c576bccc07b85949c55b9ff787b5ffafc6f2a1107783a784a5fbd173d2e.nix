{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-http"; version = "0.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho AT cielonegro DOT org>";
      author = "PHO <pho AT cielonegro DOT org>";
      homepage = "http://cielonegro.org/HTTPDateTime.html";
      url = "";
      synopsis = "Parse and format HTTP/1.1 Date and Time strings";
      description = "This package provides functionalities to parse and format\nvarious Date and Time formats allowed in HTTP\\/1.1\n(<http://tools.ietf.org/html/rfc2616#section-3.3>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ascii)
          (hsPkgs.attempt)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.bytestring)
          (hsPkgs.convertible-text)
          (hsPkgs.failure)
          (hsPkgs.tagged)
          (hsPkgs.time)
          ];
        };
      tests = {
        "test-time-http" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.ascii)
            (hsPkgs.attempt)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-textual)
            (hsPkgs.bytestring)
            (hsPkgs.convertible-text)
            (hsPkgs.failure)
            (hsPkgs.tagged)
            (hsPkgs.time)
            ];
          };
        };
      };
    }