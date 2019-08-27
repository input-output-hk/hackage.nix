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
      identifier = { name = "bound"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bound/";
      url = "";
      synopsis = "Combinators for manipulating locally-nameless generalized de Bruijn terms";
      description = "The goal of this package is to make it as easy as possible to deal with name binding without forcing an\nawkward monadic style on the user. To that end we provide haskell 98 combinators for manipulating\nlocally-nameless generalized de Bruijn terms, build over user-supplied term types. A generalized\nde Bruijn term is one where you can 'succ' whole trees instead of just individual variables.\n\nThe approach was first elaborated in Bird and Patterson, \\\"de Bruijn notation as a nested data type\\\":\n\n<http://www.cs.uwyo.edu/~jlc/courses/5000_fall_08/debruijn_as_nested_datatype.pdf>\n\nHowever, the combinators they used required higher rank types. Here we use a monad transformer to encapsulate\nthe novel recursion pattern in their generalized de Bruijn representation. It is named Scope to match up\nwith the terminology from Conor McBride and James McKinna's \\\"I am not a number: I am a free variable\\\",\nwhile providing stronger type safety guarantees.\n\n<http://www.cs.st-andrews.ac.uk/~james/RESEARCH/notanum.pdf>\n\nThere are three worked examples in the examples folder:\n\n* /Simple.hs/ provides an untyped lambda calculus with recursive let bindings.\n\n* /Derived.hs/ shows how much of the API can be automated with DeriveTraversable\nand adds combinators for building binders with pattern matching.\n\n* /Overkill.hs/ provides very strongly typed pattern matching many modern type extensions, including\npolymorphic kinds to ensure type safety. In general, the approach taken by Derived seems to deliver\na better power to weight ratio.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."prelude-extras" or (buildDepError "prelude-extras"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }