{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "functor-apply";
        version = "0.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Strong lax semimonoidal endofunctors (Applicative sans pure)";
      description = "Strong lax semimonoidal endofunctors (Applicative sans pure)";
      buildType = "Simple";
    };
    components = {
      "functor-apply" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.comonad)
          (hsPkgs.semigroups)
        ];
      };
    };
  }