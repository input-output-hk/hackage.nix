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
    flags = { test-hlint = true; mock-example = true; gpio-example = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mellon-web"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Drew Hess";
      maintainer = "Drew Hess <src@drewhess.com>";
      author = "Drew Hess <src@drewhess.com>";
      homepage = "https://github.com/dhess/mellon/";
      url = "";
      synopsis = "A REST web service for Mellon controllers";
      description = "The @mellon-web@ package wraps a @mellon-core@ controller in a REST\nweb service, making it possible to control physical access devices\nfrom an HTTP client. The package includes both a WAI application\nserver, and native Haskell client bindings for the service.\n\nLike the @mellon-core@ controller interface, the @mellon-web@ REST API\nis quite simple. There are only 3 methods:\n\n* @GET /time@ returns the system time on the server. This is made\navailable for diagnostic purposes, primarily to ensure the server\nhas an accurate clock.\n\n* @GET /state@ returns the controller's current state (either @Locked@\nor @Unlocked date@ where @date@ is the UTC time at which the\ncontroller will automatically lock again).\n\n* @PUT /state@ sets the controller's current state. Use this method to\nlock and unlock the controller.\n\nSee the included <API.md API.md> document for detailed documentation\non the REST service.\n\nNote that the @mellon-web@ server does not provide an authentication\nmechanism! You should proxy it behind a secure, authenticating HTTPS\nserver such as Nginx.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."mellon-core" or (buildDepError "mellon-core"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-docs" or (buildDepError "servant-docs"))
          (hsPkgs."servant-lucid" or (buildDepError "servant-lucid"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "mock-mellon-server" = {
          depends = (pkgs.lib).optionals (!(!flags.mock-example)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mellon-core" or (buildDepError "mellon-core"))
            (hsPkgs."mellon-web" or (buildDepError "mellon-web"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        "gpio-mellon-server" = {
          depends = (pkgs.lib).optionals (!(!flags.gpio-example)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hpio" or (buildDepError "hpio"))
            (hsPkgs."mellon-core" or (buildDepError "mellon-core"))
            (hsPkgs."mellon-gpio" or (buildDepError "mellon-gpio"))
            (hsPkgs."mellon-web" or (buildDepError "mellon-web"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."mellon-core" or (buildDepError "mellon-core"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."servant-docs" or (buildDepError "servant-docs"))
            (hsPkgs."servant-lucid" or (buildDepError "servant-lucid"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      };
    }