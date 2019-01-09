{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "validation"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014,2015 NICTA Limited";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      homepage = "https://github.com/NICTA/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nSeveral data-types like Either but with differing properties and type-class\ninstances.\n\nLibrary support is provided for those different representations, include\n`lens`-related functions for converting between each and abstracting over their\nsimilarities.\n\n* `AccValidation`\n\nThe `AccValidation` data type is isomorphic to `Either`, but has an instance\nof `Applicative` that accumulates on the error side. That is to say, if two\n(or more) errors are encountered, they are appended using a `Semigroup`\noperation.\n\nAs a consequence of this `Applicative` instance, there is no corresponding\n`Bind` or `Monad` instance. `AccValidation` is an example of, \"An applicative\nfunctor that is not a monad.\"\n\n* `Validation`\n\nThe `Validation` data type is isomorphic to `Either` and has a `Monad`\ninstance that does the same as `Either`. The only difference to `Either` is\nthe constructor names and surrounding library support.\n\n* `ValidationT`\n\nThe `ValidationT` data type is the monad transformer for `Validation`. An\ninstance of `MonadTrans` is provided for `(ValidationT err)`. Due to the\narrangement of the `ValidationT` type constructor, which permits a `MonadTrans\ninstance, there is no possible `Bifunctor` instance. Consequently, the\n`ValidationB` data type provides a `Bifunctor` instance (but not a\n`MonadTrans` instance). Library support is provided to exploit the isomorphism\nto `ValidationB`.\n\nNote that since `AccValidation` is not a monad, there is also no corresponding\nmonad transformer for this data type.\n\n* `ValidationB`\n\nThe `ValidationB` data type is similar to the monad transformer for\n`Validation` (`ValidationT`), however, due to the arrangement of the\n`ValidationB` type constructor, which permits a `Bifunctor` instance, there is\nno possible `MonadTrans` instance. Consequently, the `ValidationT` data type\nprovides a `MonadTrans` instance (but not a `Bifunctor` instance). Library\nsupport is provided to exploit the isomorphism to `ValidationT`.\n\n* `Validation'`\n\nThe `Validation' err a` type-alias is equivalent to\n`ValidationT err Identity a` and so is isomorphic to `Either` and others.\nLibraries are supplied accordingly.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.bifunctors)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }