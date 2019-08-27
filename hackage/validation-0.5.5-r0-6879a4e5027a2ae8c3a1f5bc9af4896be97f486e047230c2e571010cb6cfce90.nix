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
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "validation"; version = "0.5.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016,2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>, Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      homepage = "https://github.com/qfpl/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nSeveral data-types like Either but with differing properties and type-class\ninstances.\n\nLibrary support is provided for those different representations, include\n`lens`-related functions for converting between each and abstracting over their\nsimilarities.\n\n* `AccValidation`\n\nThe `AccValidation` data type is isomorphic to `Either`, but has an instance\nof `Applicative` that accumulates on the error side. That is to say, if two\n(or more) errors are encountered, they are appended using a `Semigroup`\noperation.\n\nAs a consequence of this `Applicative` instance, there is no corresponding\n`Bind` or `Monad` instance. `AccValidation` is an example of, \"An applicative\nfunctor that is not a monad.\"\n\n* `Validation`\n\nThe `Validation` data type is isomorphic to `Either` and has a `Monad`\ninstance that does the same as `Either`. The only difference to `Either` is\nthe constructor names and surrounding library support.\n\n* `ValidationT`\n\nThe `ValidationT` data type is the monad transformer for `Validation`. An\ninstance of `MonadTrans` is provided for `(ValidationT err)`. Due to the\narrangement of the `ValidationT` type constructor, which permits a `MonadTrans\ninstance, there is no possible `Bifunctor` instance. Consequently, the\n`ValidationB` data type provides a `Bifunctor` instance (but not a\n`MonadTrans` instance). Library support is provided to exploit the isomorphism\nto `ValidationB`.\n\nNote that since `AccValidation` is not a monad, there is also no corresponding\nmonad transformer for this data type.\n\n* `ValidationB`\n\nThe `ValidationB` data type is similar to the monad transformer for\n`Validation` (`ValidationT`), however, due to the arrangement of the\n`ValidationB` type constructor, which permits a `Bifunctor` instance, there is\nno possible `MonadTrans` instance. Consequently, the `ValidationT` data type\nprovides a `MonadTrans` instance (but not a `Bifunctor` instance). Library\nsupport is provided to exploit the isomorphism to `ValidationT`.\n\n* `Validation'`\n\nThe `Validation' err a` type-alias is equivalent to\n`ValidationT err Identity a` and so is isomorphic to `Either` and others.\nLibraries are supplied accordingly.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      };
    }