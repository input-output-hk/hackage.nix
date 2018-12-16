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
      specVersion = "1.10";
      identifier = {
        name = "amazonka-workspaces";
        version = "0.3.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon WorkSpaces SDK.";
      description = "Amazon WorkSpaces offers you an easy way to provide a cloud-based desktop\nexperience to your end-users. You simply select from a choice of bundles that\noffer a range of different amounts of CPU, memory, storage, and a choice of\napplications. Users can connect from a PC, Mac desktop computer, iPad,\nKindle, or Android tablet.\n\n/See:/ <http://docs.aws.amazon.com/workspaces/latest/devguide/welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }