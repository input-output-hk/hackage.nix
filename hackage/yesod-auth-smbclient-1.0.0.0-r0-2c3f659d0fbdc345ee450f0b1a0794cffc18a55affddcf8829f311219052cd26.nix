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
      specVersion = "1.14";
      identifier = {
        name = "yesod-auth-smbclient";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Kazuo Koga <obiwanko@me.com>";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga <obiwanko@me.com>";
      homepage = "https://github.com/kkazuo/yesod-auth-smbclient.git";
      url = "";
      synopsis = "Authentication plugin for Yesod using smbclient";
      description = "Provides smbclient authentication module that simply\nlets a user specify his/her identifier.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hamlet)
          (hsPkgs.sys-auth-smbclient)
          (hsPkgs.text)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
        ];
      };
    };
  }