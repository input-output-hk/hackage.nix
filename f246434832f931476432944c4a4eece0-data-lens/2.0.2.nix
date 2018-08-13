{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      derivedatatypeable = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-lens";
        version = "2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/data-lens/";
      url = "";
      synopsis = "Haskell 98 Lenses";
      description = "Haskell 98 Lenses";
      buildType = "Simple";
    };
    components = {
      "data-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.comonad-transformers)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers)
        ];
      };
    };
  }