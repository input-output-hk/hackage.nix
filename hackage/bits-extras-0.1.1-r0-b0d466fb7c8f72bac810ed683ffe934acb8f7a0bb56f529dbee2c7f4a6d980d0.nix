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
      specVersion = "1.6";
      identifier = { name = "bits-extras"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gabriel Wicke <wicke@wikidev.net>";
      author = "Gabriel Wicke <wicke@wikidev.net>";
      homepage = "";
      url = "";
      synopsis = "Efficient atomic and non-atomic bit operations not found in Data.Bits";
      description = "Mostly wraps low-level bit operations provided by GCC builtins, which\ntranslate to specialized instructions where available.\n\nAtomic operations include CAS (compare-and-swap), lock, fetch & add and\nsimilar primitives suitable for low-level shared-memory synchronization.\n\nPrimitives from the 'Extras' subpackage would be useful to have in the proper\n'Data.Bits' package, although this would probably require broader support\nacross different compiler backends.\n\nThe C code dynamically links to @libgcc_s@, which can cause problems in GHCi.\nGHCi does not currently support sonames and tries to open @libgcc_s.so@ while\nignoring e.g. @libgcc_s.so.1@. A possible workaround for GHCi on a linux\nsystem: @ln -s \\/lib\\/libgcc_s.so.1 \\/lib\\/libgcc_s.so@. Let me know about\nany other solutions to this issue for GHCi. Regular GHC compilation uses the\nsystem linker with soname support and does not run into this issue.\n\nRelevant Hackage tickets:\n\n* <http://hackage.haskell.org/trac/ghc/ticket/3563>\n\n* <http://hackage.haskell.org/trac/ghc/ticket/4102>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = [ (pkgs."gcc_s" or (sysDepError "gcc_s")) ];
        };
      };
    }