{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "time-http";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho AT cielonegro DOT org>";
        author = "PHO <pho AT cielonegro DOT org>";
        homepage = "http://cielonegro.org/HTTPDateTime.html";
        url = "";
        synopsis = "Parse and format HTTP/1.1 Date and Time string";
        description = "This package provides functionalities to parse and format\nvarious Date and Time formats allowed in HTTP\\/1.1 (RFC 2616).";
        buildType = "Simple";
      };
      components = {
        time-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.time
          ];
        };
      };
    }