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
        name = "irc-dcc";
        version = "2.0.0";
      };
      license = "MIT";
      copyright = "2016 Jan Gerlinger";
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
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.io-streams)
          (hsPkgs.iproute)
          (hsPkgs.irc-ctcp)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.path)
          (hsPkgs.safe-exceptions)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "irc-dcc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.iproute)
            (hsPkgs.irc-dcc)
            (hsPkgs.network)
            (hsPkgs.path)
            (hsPkgs.utf8-string)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }