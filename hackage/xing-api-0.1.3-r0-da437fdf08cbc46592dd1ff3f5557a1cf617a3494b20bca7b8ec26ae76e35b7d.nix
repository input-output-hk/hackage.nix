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
    flags = { demos = false; minimal-demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xing-api"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 Jan Ahrens";
      maintainer = "Jan Ahrens";
      author = "Jan Ahrens";
      homepage = "http://github.com/JanAhrens/xing-api-haskell";
      url = "";
      synopsis = "Wrapper for the XING API, v1.";
      description = "This package is currently under development and not considered stable.\nThe versioning follows <http://semver.org> and the first stable version will be release as 1.0.0.\n\nThis package includes a couple of demo programs.\nBy default these demos won't be built and you'll only install the library.\nYou have to set the /demos/ flag if you want to install them.\nTo use these demos, you also have to obtain an API consumer key from\n<https://dev.xing.com/applications> (a /test key/ will suffice).\n\n>cabal install -f demos xing-api";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          ];
        buildable = true;
        };
      exes = {
        "xing-api-cli-demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."xing-api" or (buildDepError "xing-api"))
            ];
          buildable = if flags.demos then true else false;
          };
        "xing-api-yesod-demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."shakespeare-i18n" or (buildDepError "shakespeare-i18n"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."xing-api" or (buildDepError "xing-api"))
            ];
          buildable = if flags.demos then true else false;
          };
        "xing-api-minimal-demo" = {
          depends = (pkgs.lib).optionals (flags.minimal-demo) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."xing-api" or (buildDepError "xing-api"))
            ];
          buildable = if flags.minimal-demo then true else false;
          };
        };
      tests = {
        "TestMain" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."xing-api" or (buildDepError "xing-api"))
            ];
          buildable = true;
          };
        };
      };
    }