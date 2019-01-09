{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linklater"; version = "3.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@haolian.org";
      author = "Hao Lian <me@haolian.org>";
      homepage = "https://github.com/hlian/linklater";
      url = "";
      synopsis = "The fast and fun way to write Slack.com bots";
      description = "\nA library for writing <https://slack.com/> Slack chat bots.\n\nTutorial: <https://github.com/hlian/linklater/wiki/Tutorial>\n\nFeatures you could take advantage of /right now, should you choose/:\n\n* Uses 'Text' for state-of-the-art Unicode support;\n\n* Lovely documentation with no misspelllllings to be found;\n\n* Supports <https://api.slack.com/docs/formatting Slack's formatting syntax>\n\n* Comes with a fast mode (@slashSimple@) and a power mode (@slash@)\n\n* A warm, receptive maintainer with beautiful brown eyes;\n\n* Fully Haddock'd methods and module;\n\n* Open source (BSD3).\n\nShamelessly cute example:\n\n<<https://raw.githubusercontent.com/hlian/linklater/38536bebf00c60fb1214b2c3a741ce00485e87af/corgi.jpg>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          ];
        };
      };
    }