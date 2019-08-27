let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-session"; version = "0.8.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."simple" or (buildDepError "simple"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        };
      };
    }