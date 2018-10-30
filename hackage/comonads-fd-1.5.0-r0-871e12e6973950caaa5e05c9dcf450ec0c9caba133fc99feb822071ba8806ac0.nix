{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "comonads-fd";
        version = "1.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/comonads-fd/";
      url = "";
      synopsis = "Comonad transformers using functional dependencies";
      description = "Comonad transformers using functional dependencies";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.comonad)
          (hsPkgs.comonad-transformers)
        ];
      };
    };
  }