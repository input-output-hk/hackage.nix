{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-doctests = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lens-action";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lens-action/";
      url = "";
      synopsis = "Monadic Getters and Folds";
      description = "This package contains combinators and types for working with\nmonadic getters and folds as split off from the original\nlens package.";
      buildType = "Custom";
    };
    components = {
      "lens-action" = {
        depends  = [
          (hsPkgs.lens)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.contravariant)
          (hsPkgs.profunctors)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }