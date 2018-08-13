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
        name = "comonad-transformers";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "git://github.com/ekmett/comonad-transformers/";
      url = "";
      synopsis = "Haskell 98 comonad transformers";
      description = "Haskell 98 comonad transformers";
      buildType = "Simple";
    };
    components = {
      "comonad-transformers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.comonad)
          (hsPkgs.distributive)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
        ];
      };
    };
  }