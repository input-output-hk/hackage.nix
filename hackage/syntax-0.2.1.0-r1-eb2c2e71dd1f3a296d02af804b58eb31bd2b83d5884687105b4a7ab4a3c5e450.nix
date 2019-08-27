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
      identifier = { name = "syntax"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Syntax descriptions for unified parsing and pretty-printing.";
      description = "'syntax' allows you to write a single syntax description and instantiate is both as a parser and a pretty printer.\n\nThe interface is based on a custom Functor\\/Applicative\\/Monad hierarchy, provided by the 'semi-iso' package. You fmap using\na semi-isomorphism instead of function. A semi-isomorphism is a isomorphism that can fail in both directions, with slightly\nweakened laws. It is worth to note that @Iso@s and @Prism@s from 'lens' are valid semi-isomorphisms :)\n\nOnce you write a description you can, for example turn it into an Attoparsec parser.\n\nSee @syntax-example@ for an example, 'syntax-attoparsec' and 'syntax-pretty' for a parser/printer implementation.\n\nThe library was inspired by:\n\n* Rendel, Tillmann, and Klaus Ostermann. \"Invertible syntax descriptions: unifying parsing and pretty printing.\" ACM Sigplan Notices. Vol. 45. No. 11. ACM, 2010.\n\nTODO:\n\n* a printer library based on Text/ByteString builders (wrapping 'pretty' is inefficient and doesn't use any features of it),\n\n* try to implement indentation and Haskell layout rule,\n\n* combinators for binary data formats, vectors,\n\n* implementation of do notation for SemiIsoMonad with QuasiQuoters.";
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
          ];
        };
      };
    }