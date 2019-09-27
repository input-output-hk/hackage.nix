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
      identifier = { name = "quickbooks"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Plow Technologies";
      maintainer = "hackage@stackbuilders.com";
      author = "Stack Builders";
      homepage = "";
      url = "";
      synopsis = "QuickBooks API binding.";
      description = "This package is a binding to the QuickBooks API. The\ndocumentation can be test using the `cabal test doctests`\ncommand. However, the documentation tests are run against\nan Intuit sandbox which you must create.\n\nVisit Intuit's developer site to create an \"app\":\n<https://developer.intuit.com/>\n\nAfter creating an app you can use your \"app token\" and\nconsumer information to aquire credentials here:\n<https://appcenter.intuit.com/Playground/OAuth>\n\nThis package is configure by environment variables. Once\nyou have your credentials please export the following\nenvironment:\n\n* INTUIT_COMPANY_ID (your app's company ID)\n\n* INTUIT_CONSUMER_KEY (your app's consumer key)\n\n* INTUIT_CONSUMER_SECRET (your app's consumer secret)\n\n* INTUIT_TOKEN (the OAuth1.0 Token you created above *used for tests*)\n\n* INTUIT_SECRET (the OAuth1.0 Secret you created above *used for tests*)\n\n* INTUIT_HOSTNAME (which will be\nsandbox-quickbooks.api.intuit.com for development/test\nenvironments. See the developer website for production)\n\nYou can now run verify the documentation using  `cabal test`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."interpolate" or (buildDepError "interpolate"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."thyme" or (buildDepError "thyme"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."email-validate" or (buildDepError "email-validate"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = false;
          };
        };
      };
    }