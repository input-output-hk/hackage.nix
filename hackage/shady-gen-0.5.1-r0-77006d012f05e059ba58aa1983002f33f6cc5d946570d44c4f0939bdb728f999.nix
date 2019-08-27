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
      identifier = { name = "shady-gen"; version = "0.5.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) by Conal Elliott 2009,2010";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/shady";
      url = "http://conal.net/repos/shady-gen";
      synopsis = "Functional GPU programming - DSEL & compiler";
      description = "Compile functional specifications for GPU execution.\nSee also shady-render, shady-tv, and shady-examples\n\nCopyright 2009-2011 by Conal Elliott; GNU AGPLv3 license (see COPYING).\nThis license is a place-holder.  Let me know if you'd like other terms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          (hsPkgs."applicative-numbers" or (buildDepError "applicative-numbers"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."TypeCompose" or (buildDepError "TypeCompose"))
          (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
          (hsPkgs."ty" or (buildDepError "ty"))
          (hsPkgs."data-treify" or (buildDepError "data-treify"))
          (hsPkgs."Boolean" or (buildDepError "Boolean"))
          ];
        };
      };
    }