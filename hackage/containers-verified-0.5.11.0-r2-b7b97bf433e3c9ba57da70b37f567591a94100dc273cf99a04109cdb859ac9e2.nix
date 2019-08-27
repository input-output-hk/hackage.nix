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
      identifier = { name = "containers-verified"; version = "0.5.11.0"; };
      license = "MIT";
      copyright = "2018 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/containers-verified";
      url = "";
      synopsis = "Formally verified drop-in replacement of containers";
      description = "In the context of the <https://deepspec.org/main DeepSpec project>, parts of the\n<http://hackage.haskell.org/package/containers containers> library were\nformally verified using <https://github.com/antalsz/hs-to-coq hs-to-coq> and\nthe interactive theorem prover Coq.\n\nThis package depends on precisely the verified version of containers and\nre-exports the verified parts of the API, with module name and function name\nunchanged.\n\nIf you happen to use only the verified subset of the API, then you can simply change\n@containers@ to @containers-verified@ in your @.cabal@ file and earn bragging\nrights about using verified data structures in your project. Because the\ntypes from @containers@ are re-exported, you can still interface with other\nlibraries that depend on @containers@ directly.\n\nIf you happen to need additional modules or functions, you will have to\ndepend on both @containers@ and @containers-verified@, and use\n<https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#package-qualified-imports package-qualified imports> to disambiguate.\n\nThis package does not re-export any of the @….Internals@ modules.\n\nWe cannot control which type class instances are re-exported; these therefore\nmay give you access to unverified code. Also, the @conatiners@ code contains\nsome CPP directives; these can enable different code on your machine than the\ncode that we verified (e.g. different bit-widths).\n\nTo learn more about what exactly has been verified, and how wide the\nformalization gap is, see the paper <https://arxiv.org/abs/1803.06960 “Ready, Set, Verify! Applying hs-to-coq\nto real-world Haskell code”> by Joachim Breitner, Antal Spector-Zabusky, Yao\nLi, Christine Rizkallah, John Wiegley and Stephanie Weirich.\n\nThe long-term maintenance plan for this package is not fleshed out yet, and\ncertainly depends on user-demand. Let us know your needs! (And your\ntechnical or financial abilities to contribute...)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."containers" or (buildDepError "containers")) ];
        };
      };
    }