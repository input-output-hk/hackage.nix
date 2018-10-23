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
        name = "profunctor-extras";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "git://github.com/ekmett/profunctor-extras/";
      url = "";
      synopsis = "Profunctor extras";
      description = "Profunctor extras";
      buildType = "Simple";
    };
    components = {
      "profunctor-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroupoids)
          (hsPkgs.comonad)
          (hsPkgs.profunctors)
        ];
      };
    };
  }