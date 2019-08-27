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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "MemoTrie"; version = "0.6.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2016 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/MemoTrie";
      url = "";
      synopsis = "Trie-based memo functions";
      description = "MemoTrie provides a basis for memoized functions over some domains,\nusing tries.  It's based on ideas from Ralf Hinze and code from\nSpencer Janssen. Generic support thanks to Sam Boosalis.\n\nProject wiki page: <http://haskell.org/haskellwiki/MemoTrie>\n\n&#169; 2008-2016 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhc && (compiler.version).ge "7.10.0"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."newtype-generics" or (buildDepError "newtype-generics"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."newtype-generics" or (buildDepError "newtype-generics"))
            ];
        };
      exes = {
        "generic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
            ];
          };
        };
      };
    }