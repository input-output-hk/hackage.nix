{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lord"; version = "1.20131130"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "remotenonsense@gmail.com";
      author = "rnons";
      homepage = "https://github.com/rnons/lord";
      url = "";
      synopsis = "A command line interface to online radios.";
      description = "A unified interface to several online radio service providers, use @mpd@ (<http://musicpd.org>) as backend.\n\nSupported radios:\n\n* <http://8tracks.com>\n\n* <http://cmd.fm>\n\n* <http://radioreddit.com>\n\n* <http://douban.fm>\n\n* <http://jing.fm>\n\nCommands:\n\n> lord -h\n> lord status\n> lord kill\n>\n> lord 8tracks listen <mix_id> [--no-daemon]\n> lord 8tracks search <keywords>\n>\n> lord cmd listen <genre> [--no-daemon]\n> lord cmd genres\n>\n> lord douban listen [<channel_id> | <musician>] [--no-daemon]\n> lord douban search <keywords>\n> lord douban hot\n> lord douban trending\n>\n> lord jing listen <keywords> [--no-daemon]\n>\n> lord reddit listen <genre> [--no-daemon]\n> lord reddit genres";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lord" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.configurator)
            (hsPkgs.daemons)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.html-conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.libmpd)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.xml-conduit)
            (hsPkgs.yaml)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.configurator)
            (hsPkgs.daemons)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.html-conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.libmpd)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.xml-conduit)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }