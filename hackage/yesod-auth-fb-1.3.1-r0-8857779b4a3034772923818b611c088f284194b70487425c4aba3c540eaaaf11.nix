{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-auth-fb"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa, Michael Snoyman";
      homepage = "https://github.com/meteficha/yesod-auth-fb";
      url = "";
      synopsis = "Authentication backend for Yesod using Facebook.";
      description = "This package allows you to use Yesod's authentication framework\nwith Facebook as your backend.  That is, your site's users will\nlog in to your site through Facebook.  Your application need to\nbe registered on Facebook.\n\nThis package works with both the server-side authentication\nflow\n(<https://developers.facebook.com/docs/authentication/server-side/>)\nvia the \"Yesod.Auth.Facebook.ServerSide\" module and the\nclient-side authentication\n(<https://developers.facebook.com/docs/authentication/client-side/>)\nvia the \"Yesod.Auth.Facebook.ClientSide\" module.  It's up to\nyou to decide which one to use.  The server-side code is older\nand as such has been through a lot more testing than the\nclient-side code.  Also, for now only the server-side code is\nable to work with other authentication plugins.  The\nclient-side code, however, allows you to use some features that\nare available only to the Facebook JS SDK (such as\nautomatically logging your users in, see\n<https://developers.facebook.com/blog/post/2012/05/08/how-to--improve-the-experience-for-returning-users/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
          (hsPkgs."shakespeare-js" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-js"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."yesod-fb" or ((hsPkgs.pkgs-errors).buildDepError "yesod-fb"))
          (hsPkgs."fb" or ((hsPkgs.pkgs-errors).buildDepError "fb"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }