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
        name = "free";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "git://github.com/ekmett/free/";
      url = "";
      synopsis = "Haskell 98 monads for free";
      description = "Haskell 98 monads for free";
      buildType = "Simple";
    };
    components = {
      "free" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.distributive)
          (hsPkgs.transformers)
          (hsPkgs.semigroupoids)
          (hsPkgs.comonad)
          (hsPkgs.semigroups)
        ];
      };
    };
  }