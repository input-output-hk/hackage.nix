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
    flags = { web = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "packdeps"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://packdeps.haskellers.com/";
      url = "";
      synopsis = "Check your cabal packages for lagging dependencies.";
      description = "This provides a library and command line tool for checking if the upper bounds in your package's dependency list excludes the newest package available. The code was originally available only as a web interface at <http://packdeps.haskellers.com/>, but is now available for standalone use as well.\n\nThe command line tool has an incredibly simple interface: simply pass it a list of cabal files, and it will tell you what dependencies- if any- are restricted.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "packdeps" = {
          depends = (pkgs.lib).optionals (!flags.web) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."packdeps" or (buildDepError "packdeps"))
            ];
          };
        "packdeps-yesod" = {
          depends = (pkgs.lib).optionals (flags.web) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."packdeps" or (buildDepError "packdeps"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."yesod-newsfeed" or (buildDepError "yesod-newsfeed"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            ];
          };
        };
      };
    }