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
      specVersion = "1.10.1";
      identifier = { name = "pipes"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compositional pipelines";
      description = "\\\"Iteratees done right\\\".  This library implements\niteratees\\/enumerators\\/enumeratees simply and elegantly, but uses different\nnaming conventions.\n\nAdvantages over traditional iteratee implementations:\n\n* /Simpler semantics/: There is only one data type ('Pipe'), two primitives\n('await' and 'yield'), and only one way to compose 'Pipe's ('.').  In fact,\nthis library introduces no new operators, using only its 'Monad' and\n'Category' instances to implement all behavior.\n\n* /Clearer naming conventions/: Enumeratees are called 'Pipe's, Enumerators\nare 'Producer's, and Iteratees are 'Consumer's.  'Producer's and 'Consumer's\nare just type synonyms for 'Pipe's with either the input or output end\nclosed.\n\n* /Pipes are Categories/: You compose them using ordinary composition.\nThere are actually two 'Category' instances: one for 'Lazy' composition and\none for 'Strict' composition.  Both instances satisfy the 'Category' laws.\n\n* /Intuitive/: Pipe composition is easier to reason about because it is a true\n'Category'.  Composition works seamlessly and you don't have to worry about\nrestarting iteratees, feeding new input, etc.  \\\"It just works\\\".\n\n* /\"Vertical\" concatenation works flawlessly on everything/: ('>>')\nconcatenates 'Pipe's, but since everything is a 'Pipe', you can use it to\nconcatenate 'Producer's, 'Consumer's, and even intermediate 'Pipe' stages.\nVertical Concatenation always works the way you expect, picking up where the\nprevious 'Pipe' left off.\n\n* /Symmetric implementation/: Most iteratee libraries are either\nenumerator-driven or iteratee-driven.  'Pipe's are implemented\nsymmetrically, which is why they can be composed with either 'Lazy'\n('Consumer'-driven) or 'Strict' ('Producer'-driven) semantics.\n\nCheck out \"Control.Pipe\" for a copious introduction (in the spirit of the\n@iterIO@ library) and \"Control.Pipe.Common\" for the actual implementation.\n\nThis library does not yet provide convenience 'Pipe's for common operations,\nbut they are forthcoming.  However, there are several examples in the\ndocumentation to get you started and I encourage you to write your own to see\nhow easy they are to write.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }