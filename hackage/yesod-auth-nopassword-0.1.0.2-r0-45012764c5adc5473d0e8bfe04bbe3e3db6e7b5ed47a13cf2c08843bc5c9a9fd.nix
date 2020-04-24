{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-nopassword"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2016 Dan Palmer";
      maintainer = "dan@danpalmer.me";
      author = "Dan Palmer";
      homepage = "https://github.com/danpalmer/yesod-auth-nopassword#readme";
      url = "";
      synopsis = "A plugin for Yesod to provide email-only authentication.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."pwstore-fast" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-fast"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          ];
        buildable = true;
        };
      };
    }