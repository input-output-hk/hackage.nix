{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "irc-bytestring";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acurtis@spsu.edu";
        author = "Adam Curtis";
        homepage = "https://github.com/kallisti-dev/irc-bytestring";
        url = "";
        synopsis = "serialization and parsing of IRC messages";
        description = "A simple library for handling IRC protocol messages using bytestrings.";
        buildType = "Simple";
      };
      components = {
        "irc-bytestring" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
      };
    }