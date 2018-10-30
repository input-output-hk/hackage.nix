{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "linklater";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@haolian.org";
      author = "Hao Lian";
      homepage = "https://github.com/hlian/linklater";
      url = "";
      synopsis = "Write bots for your Slack account, and then go to sleep (because it's so easy and late at night)";
      description = "\nA library for writing <https://slack.com/> Slack chat bots.\n\nA mistake?";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.wai)
        ];
      };
    };
  }