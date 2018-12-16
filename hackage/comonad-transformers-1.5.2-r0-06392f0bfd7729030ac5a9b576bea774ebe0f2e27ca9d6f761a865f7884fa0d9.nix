{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      derivedatatypeable = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "comonad-transformers";
        version = "1.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "git://github.com/ekmett/comonad-transformers/";
      url = "";
      synopsis = "Comonad transformers";
      description = "Comonad transformers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
        ];
      };
    };
  }