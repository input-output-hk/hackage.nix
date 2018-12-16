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
      specVersion = "1.10";
      identifier = {
        name = "profunctor-extras";
        version = "0.3.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/profunctor-extras/";
      url = "";
      synopsis = "Profunctor extras";
      description = "Profunctor extras";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroupoid-extras)
          (hsPkgs.comonad)
          (hsPkgs.profunctors)
        ];
      };
    };
  }