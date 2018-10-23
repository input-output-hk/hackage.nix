{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "validation";
        version = "1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2013 Tony Morris, Nick Partridge\nCopyright (C) 2014,2015 NICTA Limited\nCopyright (c) 2016,2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>, Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      homepage = "https://github.com/qfpl/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA data-type like Either but with differing properties and type-class\ninstances.\n\nLibrary support is provided for this different representation, include\n`lens`-related functions for converting between each and abstracting over their\nsimilarities.\n\n* `Validation`\n\nThe `Validation` data type is isomorphic to `Either`, but has an instance\nof `Applicative` that accumulates on the error side. That is to say, if two\n(or more) errors are encountered, they are appended using a `Semigroup`\noperation.\n\nAs a consequence of this `Applicative` instance, there is no corresponding\n`Bind` or `Monad` instance. `Validation` is an example of, \"An applicative\nfunctor that is not a monad.\"";
      buildType = "Simple";
    };
    components = {
      "validation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.bifunctors)
          (hsPkgs.lens)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.5")) (hsPkgs.ghc-prim);
      };
      tests = {
        "hedgehog" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.semigroups)
            (hsPkgs.validation)
          ];
        };
        "hunit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.semigroups)
            (hsPkgs.validation)
          ];
        };
      };
    };
  }