{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "yesod-auth-pam"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga <obiwanko@me.com>";
      homepage = "";
      url = "";
      synopsis = "Provides PAM authentication module";
      description = "Provides PAM authentication module that simply\nlets a user specify his/her identifier.\n\nThis is not intended for real world use,\njust for private network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
          (hsPkgs."pam" or ((hsPkgs.pkgs-errors).buildDepError "pam"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          ];
        buildable = true;
        };
      };
    }