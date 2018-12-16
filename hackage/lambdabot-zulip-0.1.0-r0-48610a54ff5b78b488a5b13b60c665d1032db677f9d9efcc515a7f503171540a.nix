{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lambdabot-zulip";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2017 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/lambdabot-zulip";
      url = "";
      synopsis = "Lambdabot for Zulip Chat";
      description = "Integrates lambdabot with Zulip Chat.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hint)
          (hsPkgs.hzulip)
          (hsPkgs.mueval)
          (hsPkgs.optparse-applicative)
          (hsPkgs.say)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "lamdabot-zulip-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lambdabot-zulip)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lambdabot-zulip)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }