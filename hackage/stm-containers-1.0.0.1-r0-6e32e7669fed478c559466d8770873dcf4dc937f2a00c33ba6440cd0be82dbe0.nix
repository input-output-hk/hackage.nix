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
      identifier = { name = "stm-containers"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-containers";
      url = "";
      synopsis = "Containers for STM";
      description = "This library is based on an STM-specialized implementation of\nHash Array Mapped Trie.\nIt provides efficient implementations of @Map@, @Set@\nand other data structures,\nwhich starting from version @1@ perform even better than their counterparts from \\\"unordered-containers\\\",\nbut also scale well on concurrent access patterns.\n\nFor details on performance of the library, which are a bit outdated, see\n<http://nikita-volkov.github.io/stm-containers/ this blog post>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deferred-folds" or (buildDepError "deferred-folds"))
          (hsPkgs."focus" or (buildDepError "focus"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."stm-hamt" or (buildDepError "stm-hamt"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."deferred-folds" or (buildDepError "deferred-folds"))
            (hsPkgs."focus" or (buildDepError "focus"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."rerebase" or (buildDepError "rerebase"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            ];
          };
        };
      };
    }