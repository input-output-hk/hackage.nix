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
        name = "lord";
        version = "2.20140323";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "remotenonsense@gmail.com";
      author = "rnons";
      homepage = "https://github.com/rnons/lord";
      url = "";
      synopsis = "A command line interface to online radios.";
      description = "A unified command line interface to several online radios, use mpd (<http://musicpd.org>) as backend by default. Will fallback to mplayer (<http://www.mplayerhq.hu>) when mpd is unavailable.\n\nSupported radios:\n\n* <http://8tracks.com>\n\n* <http://cmd.fm>\n\n* <http://radioreddit.com>\n\n* <http://douban.fm>\n\n* <http://jing.fm>\n\nCommands:\n\n> lord -h\n> lord status\n> lord kill\n>\n> lord 8tracks listen [<mix_id> | <mix_url>] [--no-daemon]\n> lord 8tracks search <keywords>\n> lord 8tracks [featured | trending | newest]\n>\n> lord cmd listen <genre> [--no-daemon]\n> lord cmd genres\n>\n> lord douban listen [<channel_id> | <album_url> | <musician_url> | <musician_name>] [--no-daemon]\n> lord douban search <keywords>\n> lord douban [hot | trending]\n>\n> lord jing listen <keywords> [--no-daemon]\n>\n> lord reddit listen <genre> [--no-daemon]\n> lord reddit genres";
      buildType = "Simple";
    };
    components = {
      "lord" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.fast-logger)
          (hsPkgs.html-conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.libmpd)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai-logger)
          (hsPkgs.utf8-string)
          (hsPkgs.xml-conduit)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "lord" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.daemons)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.html-conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.libmpd)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai-logger)
            (hsPkgs.utf8-string)
            (hsPkgs.xml-conduit)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
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
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.wai-logger)
            (hsPkgs.xml-conduit)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }