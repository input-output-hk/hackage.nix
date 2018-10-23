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
        name = "recursion-schemes";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/recursion-schemes/";
      url = "";
      synopsis = "Generalized bananas, lenses and barbed wire";
      description = "Generalized bananas, lenses and barbed wire\n\n/Changes since 0.1/:\n\n* Removed dependency on Foldable from Mendler-style recursion schemes\n\n* Added Lambek's Lemma";
      buildType = "Simple";
    };
    components = {
      "recursion-schemes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.comonad)
          (hsPkgs.comonad-transformers)
          (hsPkgs.streams)
        ];
      };
    };
  }