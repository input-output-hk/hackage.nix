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
      specVersion = "1.10.0";
      identifier = { name = "haskell-src-exts-qq"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "A quasiquoter for haskell-src-exts.";
      description = "Allows one to write programs that generate Haskell programs much\nmore concisely and legibly. This package supports:\n\n* Antiquotations, denoted by stealing the splice syntax of\nTemplate Haskell, for example @[hs| \$x ++ \$(Hs.strE \"bar\") |]@.\nSplices may not nested.\n\n* Antiquoting pattern variables in patterns, using double\nparentheses. For instance:\n\n> let x = Hs.name \"n\" in [hs| \\ ((x)) -> \$(Hs.Var (Hs.UnQual x)) + 1 |]\n\n* Antiquoting bound names. Names that are antiquoted appear\nsurrounded by double underscores. For instance:\n\n> let f = \"incr\"\n>     fE = Hs.Var \$ Hs.UnQual \$ Hs.name f\n> in [hs| let __f__ x = x + 1 in \$fE 10 |]\n\nWe need three different syntaxes for antiquotations, because we do\nnot extend the haskell-src-exts parser in any way and the Template\nHaskell splicing syntax is only available in expression contexts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      };
    }