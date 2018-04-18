{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linklater";
          version = "2.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@haolian.org";
        author = "Hao Lian <me@haolian.org>";
        homepage = "https://github.com/hlian/linklater";
        url = "";
        synopsis = "The fast and fun way to write Slack.com bots";
        description = "\n__A library for writing <https://slack.com/> Slack chat bots.__\n\nTutorial: <https://github.com/hlian/linklater/wiki/Tutorial>\n\nFeatures you could take advantage of /right now, should you choose/:\n\n* Uses 'Text' for state-of-the-art Unicode support;\n\n* Lovely documentation with no misspelllllings to be found;\n\n* Supports <https://api.slack.com/docs/formatting Slack's formatting syntax>\n\n* Comes with a fast mode (@slashSimple@) and a power mode (@slash@)\n\n* A warm, receptive maintainer with beautiful brown eyes;\n\n* Fully Haddock'd methods and module;\n\n* Open source (BSD3).\n\nFor example, maybe you want this little guy to show up in your channel:\n\n<<https://raw.githubusercontent.com/hlian/linklater/6232b950a333cfa6d5fffea997ec9ab8c2ce31ba/corgi.jpg>>\n\nFind out how by clicking on \"Network.Linklater\"!";
        buildType = "Simple";
      };
      components = {
        linklater = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.wai
            hsPkgs.http-types
          ];
        };
      };
    }