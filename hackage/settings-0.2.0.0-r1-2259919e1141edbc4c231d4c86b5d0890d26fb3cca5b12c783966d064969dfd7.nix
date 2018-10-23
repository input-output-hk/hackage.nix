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
        name = "settings";
        version = "0.2.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/settings/";
      url = "";
      synopsis = "Runtime-editable program settings.";
      description = "This library aims to be a tool for constructing a settings management UI on\ntop of the relevant part of your program state. The settings tree structure\ndefinition is separate from the actual setting values, so your program logic\ncode doesn't need to be changed. It can access the settings as regular\nHaskell values.\n\nThe settings are presented to the user as a tree hierarchy. The idea has some\nsimilarity to @git config@ and <http://weechat.org Weechat>'s settings\nsystem, but isn't identical.\n\nTo get started, see the tutorial in the \"Data.Settings\" module.";
      buildType = "Simple";
    };
    components = {
      "settings" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.time-units)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }