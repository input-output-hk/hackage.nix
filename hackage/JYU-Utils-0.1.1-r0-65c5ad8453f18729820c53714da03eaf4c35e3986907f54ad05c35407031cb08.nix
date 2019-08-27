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
      specVersion = "1.4";
      identifier = { name = "JYU-Utils"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Some utility functions for JYU projects";
      description = "List, function and monad utility functions.\nIncludes an old variant of MonadRandom that is used in\nCV-package.\nPretty much the only reason to ever use this\nis to compile CV-package, and that is also just\ndue legacy reasons.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        };
      };
    }