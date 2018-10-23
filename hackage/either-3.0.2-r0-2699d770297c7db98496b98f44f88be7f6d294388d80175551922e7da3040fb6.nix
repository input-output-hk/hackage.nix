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
        name = "either";
        version = "3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/either/";
      url = "";
      synopsis = "Haskell 98 either monad transformer";
      description = "Haskell 98 either monad transformer";
      buildType = "Simple";
    };
    components = {
      "either" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers)
        ];
      };
    };
  }