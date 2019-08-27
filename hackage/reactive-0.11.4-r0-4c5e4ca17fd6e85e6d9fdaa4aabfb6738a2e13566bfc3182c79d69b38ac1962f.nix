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
      specVersion = "1.2";
      identifier = { name = "reactive"; version = "0.11.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2007-2009 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/reactive";
      url = "http://code.haskell.org/reactive";
      synopsis = "Push-pull functional reactive programming";
      description = "/Reactive/ is a simple foundation for programming reactive systems\nfunctionally.  Like Fran\\/FRP, it has a notions of (reactive) behaviors and\nevents.  Unlike most previous FRP implementations, Reactive has a hybrid\ndemand/data-driven implementation, as described in the paper \\\"Push-pull\nfunctional reactive programming\\\", <http://conal.net/papers/push-pull-frp/>.\n\nThis version of Reactive has some serious bugs that show up particularly\nwith some uses of the Event monad.  Some problems have been due to bugs\nin the GHC run-time support for concurrency.  I do not know whether the\nremaining problems in Reactive are still more subtle RTS issues, or\nsome subtle laziness bugs in Reactive.  Help probing the remaining\ndifficulties is most welcome.\n\nImport \"FRP.Reactive\" for FRP client apps.  To make a Reactive adapter for an\nimperative library, import \"FRP.Reactive.LegacyAdapters\".\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/reactive>\n\n&#169; 2007-2009 by Conal Elliott; GNU AGPLv3 license (see COPYING).\nI am not thrilled with GPL, and I doubt I'll stay with it for long.\nIf you would like different terms, please talk to me.\n\nWith contributions from: Robin Green, Thomas Davie, Luke Palmer,\nDavid Sankel, Jules Bean, Creighton Hogg, Chuan-kai Lin, and Richard\nSmith.  Please let me know if I've forgotten to list you.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."TypeCompose" or (buildDepError "TypeCompose"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."unamb" or (buildDepError "unamb"))
          (hsPkgs."checkers" or (buildDepError "checkers"))
          (hsPkgs."category-extras" or (buildDepError "category-extras"))
          (hsPkgs."Stream" or (buildDepError "Stream"))
          ];
        };
      };
    }