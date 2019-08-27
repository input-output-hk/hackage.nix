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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fastsum"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Rob Rix, Josh Vera, Allele Dev, Patrick Thomson 2016-2018";
      maintainer = "patrickt@github.com";
      author = "Rob Rix, Josh Vera, Allele Dev, Patrick Thomson";
      homepage = "https://github.com/patrickt/fastsum#readme";
      url = "";
      synopsis = "A fast open-union type suitable for 100+ contained alternatives";
      description = "This package provides Data.Sum, an open-union type, similar to the Union type\nthat powers the implementation of Oleg Kiselyov's extensible-effects library.\n\nUnlike most open-union implementations, this type is very fast to compile,\neven when the type-level list of alternatives contains hundreds of entries.\nMembership queries are constant-time, compiling to a single type-level natural\nlookup in a closed type family, unlike the traditional encoding of Union,\nwhich relies on recursive typeclass lookups. As such, this type lends itself\nto representing abstract syntax trees or other rich data structures.\n\nThis project is safe to use in production. Any performance problems at\ncompile-time or runtime should be filed as bugs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fastsum" or (buildDepError "fastsum"))
            ];
          };
        };
      };
    }