{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "profunctor-extras";
        version = "3.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/profunctor-extras/";
      url = "";
      synopsis = "Profunctor extras";
      description = "This package provides a number of utilities and constructions that arise\nwhen working with profunctors that require minor extensions to Haskell 98.";
      buildType = "Simple";
    };
    components = {
      "profunctor-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroupoid-extras)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
        ];
      };
    };
  }