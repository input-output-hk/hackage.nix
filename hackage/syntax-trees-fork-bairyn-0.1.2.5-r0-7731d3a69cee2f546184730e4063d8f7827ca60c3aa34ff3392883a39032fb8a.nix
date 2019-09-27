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
      specVersion = "1.18";
      identifier = { name = "syntax-trees-fork-bairyn"; version = "0.1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dom.orchard@gmail.com\n,ByronJohnsonFP@gmail.com";
      author = "Dominic Orchard\n,Byron Johnson";
      homepage = "";
      url = "";
      synopsis = "Convert between different Haskell syntax trees.  Bairyn's fork.";
      description = "This is a fork of Dominic Orchard's syntax-trees package that is patched\njust to build on Haskell's more modern ecosystem.\n\nProvides an instance that translates haskell-src-exts expression trees into\nTemplate Haskell expression trees in a way that depends only on the\nhaskell-src-exts syntax tree and agreement on the pretty-printed\nrepresentation of Haskell between haskell-src-exts pretty-printer and\nTemplate Haskell quotations (as opposed to depending on both TH and\nhaskell-src-exts syntax tree representations).\n\nInstead of converting between data types,\nhaskell-src-exts syntax trees are pretty-printed and wrapped in\na TH quotation which is then interpreted as a Haskell program,\nyielding a TH Exp tree. Free variables in the haskell-src-exts tree are\npreserved by lifting them to TH splices prior to pretty-printing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."hint" or (buildDepError "hint"))
          ];
        buildable = true;
        };
      };
    }