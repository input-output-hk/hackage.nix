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
      identifier = { name = "syntax"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Syntax descriptions for unified parsing and pretty-printing.";
      description = "'syntax' allows you to write a single syntax description and instantiate is both as a parser and a pretty printer.\n\nThe interface is based on a custom Functor\\/Applicative\\/Monad hierarchy, provided by the 'semi-iso' package. You fmap using\na semi-isomorphism instead of function. A semi-isomorphism is a isomorphism that can fail in both directions, with slightly\nweakened laws. It is worth to note that @Iso@s and @Prism@s from 'lens' are valid semi-isomorphisms :)\n\nOnce you write a description you can, for example turn it into an Attoparsec parser, or into a 'Data.Syntax.Printer.Text.Printer'.\n\nSee @syntax-example@ and @syntax-example-json@ for examples, @syntax-attoparsec@ and @syntax-printer@ for a parser/printer implementation.\n\nThe library was inspired by:\n\n* Rendel, Tillmann, and Klaus Ostermann. \"Invertible syntax descriptions: unifying parsing and pretty printing.\" ACM Sigplan Notices. Vol. 45. No. 11. ACM, 2010.\n\nTODO:\n\n* Research relative monads and relative monad transformers. Indent is basically a Reader monad over a syntax. How would a State monad look?\n\n* Try to implement Haskell layout rule.\n\n* Combinators for binary data formats, vectors.\n\n* Better error messages.\n\n* Maybe an implementation of do notation for SemiIsoMonad with QuasiQuoters, like the codo notation for comonads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."semi-iso" or (buildDepError "semi-iso"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }