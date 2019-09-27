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
      specVersion = "1.8";
      identifier = { name = "hexpr"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "https://github.com/Zankoku-Okuno/hexpr/";
      url = "";
      synopsis = "A framework for symbolic, homoiconic languages.";
      description = "H-expressions are a variant of S-expressions. Where s-expressions are atoms or nodes grouped into lists of length at least one, h-expressions, or hexprs, are grouped into lists of length two. This may seem very trivial, but this restriction makes it possible to treat parenthesis in the concrete syntax of hexprs merely as a manual override to the basic precedence rules, just as in mathematics. In particular, a suitable hexpr interpreter is capable of understanding eta-converted terms, which is quite unrealistic, if not impossible in an sexpr-based syntax. Thankfully, hexprs retain all the advantages of sexprs with respect to homoiconic syntax.\nHexprs on their own are fairly unhelpful, so we also have also included a configurable hexpr parser based on parsec. I wasn't long before mission creep set in, and a series of tools were produced to aid in creating a frontend for hexpr-based languages. See the package 'hexpr-examples' for some examples of the framework in action.\nI think H could stand for many things: the greek letter eta, hierarchical, happy, next in the alphabet after f, or perhaps hexpr == hexpr-expression. Where it comes from is unimportant, what is important is that we can easily the next generation of homoiconic languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."data-ref" or (buildDepError "data-ref"))
          ];
        buildable = true;
        };
      };
    }