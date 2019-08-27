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
      specVersion = "1.6";
      identifier = { name = "yesod-examples"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Example programs using the Yesod Web Framework.";
      description = "These are the same examples and tutorials found on the documentation site.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "blog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            ];
          };
        "ajax" = {
          depends = [
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            ];
          };
        "file-echo" = {
          depends = [ (hsPkgs."text" or (buildDepError "text")) ];
          };
        "pretty-yaml" = {
          depends = [
            (hsPkgs."data-object-yaml" or (buildDepError "data-object-yaml"))
            (hsPkgs."data-object" or (buildDepError "data-object"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "i18n" = {};
        "session" = {};
        "widgets" = {
          depends = [ (hsPkgs."yesod-form" or (buildDepError "yesod-form")) ];
          };
        "generalized-hamlet" = {};
        "form" = {};
        "persistent-synopsis" = {
          depends = [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            ];
          };
        "hamlet-synopsis" = {
          depends = [ (hsPkgs."hamlet" or (buildDepError "hamlet")) ];
          };
        "chat" = { depends = [ (hsPkgs."stm" or (buildDepError "stm")) ]; };
        };
      };
    }