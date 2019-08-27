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
      identifier = { name = "happstack-static-routing"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gracjan@scrive.com";
      author = "Scrive";
      homepage = "https://github.com/scrive/happstack-static-routing";
      url = "";
      synopsis = "Support for static URL routing with overlap detection for Happstack.";
      description = "If you have a large routing table in Happstack and want\nto insert a new handler, you might run into overlap problems\n(ambiguity).  The new handler might not fire because it matches\nagainst a URL that is already handled earlier.  Or if you put your\nnew handler first, it might steal requests from existing handlers.\nThis Happstack support library allows you to detect overlap cases\nand build unambiguous routing tables where the order of the handlers\nis irrelevant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."list-tries" or (buildDepError "list-tries"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }