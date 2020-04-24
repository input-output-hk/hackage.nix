{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-session"; version = "0.8.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Aryeh Levy";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "Cookie-based session management for the Simple web framework";
      description = "Adds cookie-based session management to simple 'Controller's. To add to an\napplication, declare the Controller setting\\'s type an instance of\n'HasSession', and wrap routes with 'withSession'. For example:\n\n> data AppSettings = ...\n>\n> instance HasSession AppSettings where\n>   ...\n\n> controllerApp settings \$ withSessions \$ do\n>   routeName \\\"posts\\\" \$ ...\n\nThen, in your controllers you can seemlessly get and set keys from the\nsession:\n\n> get \"/profile\" \$ do\n>   muserId <- sessionLookup \"current_user_id\"\n>   case muserIf of\n>     Nothing -> respond \$ redirectTo \"/login\"\n>     Just userId -> [handle request]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."cookie" or ((hsPkgs.pkgs-errors).buildDepError "cookie"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."simple" or ((hsPkgs.pkgs-errors).buildDepError "simple"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }