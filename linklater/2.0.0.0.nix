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
          version = "2.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@haolian.org";
        author = "Hao Lian <me@haolian.org>";
        homepage = "https://github.com/hlian/linklater";
        url = "";
        synopsis = "The fast and fun way to write Slack.com bots";
        description = "\n__A library for writing <https://slack.com/> Slack chat bots.__\n\nTutorial: <https://github.com/hlian/linklater/wiki/Tutorial>\n\nFeatures you could take advantage of /right now, should you choose/:\n\n* Uses 'Text' for state-of-the-art Unicode support;\n* Lovely documentation with no misspelllllings to be found;\n* A warm, receptive maintainer with beautiful brown eyes;\n* Fully Haddock'd methods and module;\n* Open source (BSD3).\n\nFor example, maybe you want this little guy to show up in your channel:\n\n<<corgi.jpg>>\n\nFind out how by clicking on \"Network.Linklater\"!";
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