{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "profunctors";
        version = "5.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/profunctors/";
      url = "";
      synopsis = "Profunctors";
      description = "Profunctors";
      buildType = "Simple";
    };
    components = {
      "profunctors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
        ];
      };
    };
  }