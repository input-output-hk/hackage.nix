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
      identifier = { name = "pipes"; version = "2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compositional pipelines";
      description = "\\\"Iteratees done right\\\".  This library implements\niteratees\\/enumerators\\/enumeratees simply and elegantly, using different\nnaming conventions.\n\nAdvantages over traditional iteratee implementations:\n\n* /Simpler semantics/: There is only one data type ('Pipe'), two primitives\n('await' and 'yield'), and only one way to compose 'Pipe's ('.').  In fact,\nthis library implements its entire behavior using its 'Monad' and 'Category'\ninstances and enforces their laws strictly!\n\n* /Clearer naming conventions/: Enumeratees are called 'Pipe's, Enumerators\nare 'Producer's, and Iteratees are 'Consumer's.  'Producer's and 'Consumer's\nare just type synonyms for 'Pipe's with either the input or output end\nclosed.\n\n* /Pipes are Categories/: You compose them using ordinary composition.\n\n* /Intuitive/: Pipe composition is easier to reason about because it is a true\n'Category'.  Composition works seamlessly and you don't have to worry about\nrestarting iteratees, feeding new input, etc.  \\\"It just works\\\".\n\n* /\"Vertical\" concatenation works flawlessly on everything/: ('>>')\nconcatenates 'Pipe's, but since everything is a 'Pipe', you can use it to\nconcatenate 'Producer's, 'Consumer's, and even intermediate 'Pipe' stages.\nVertical Concatenation always works the way you expect, picking up where the\nprevious 'Pipe' left off.\n\n* /Bidirectionality/: The library now provides a bidirectional 'Pipe' type,\ncalled a 'Proxy'.\n\nCheck out \"Control.Pipe.Tutorial\" for a copious introductory tutorial and\n\"Control.Pipe\" for the actual implementation.  \"Control.Proxy.Tutorial\"\nintroduces bidirectional iteratees that are backwards-compatible with 'Pipe's\nand \"Control.Proxy\" provides the implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."index-core" or (buildDepError "index-core"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-free" or (buildDepError "transformers-free"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        };
      };
    }