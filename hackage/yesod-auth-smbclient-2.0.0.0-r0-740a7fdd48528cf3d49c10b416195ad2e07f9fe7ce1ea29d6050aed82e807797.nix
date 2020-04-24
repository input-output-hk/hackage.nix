{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "yesod-auth-smbclient"; version = "2.0.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
          (hsPkgs."sys-auth-smbclient" or ((hsPkgs.pkgs-errors).buildDepError "sys-auth-smbclient"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          ];
        buildable = true;
        };
      };
    }