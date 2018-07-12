{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "irc-dcc";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "git@jangerlinger.de";
        author = "Jan Gerlinger";
        homepage = "https://github.com/JanGe/irc-dcc";
        url = "";
        synopsis = "A DCC message parsing and helper library for IRC clients";
        description = "DCC (Direct Client-to-Client) is an IRC sub-protocol for\nestablishing and maintaining direct connections to\nexchange messages and files.\n\nSee <http://www.irchelp.org/irchelp/rfc/ctcpspec.html> for\nmore details.";
        buildType = "Simple";
      };
      components = {
        "irc-dcc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.errors
            hsPkgs.io-streams
            hsPkgs.iproute
            hsPkgs.irc-ctcp
            hsPkgs.network
            hsPkgs.path
            hsPkgs.transformers
            hsPkgs.utf8-string
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.hspec-attoparsec
              hsPkgs.attoparsec
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.iproute
              hsPkgs.irc-ctcp
              hsPkgs.network
              hsPkgs.path
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }