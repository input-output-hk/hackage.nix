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
        name = "groupoids";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/groupoids/";
      url = "";
      synopsis = "Haskell 98 Groupoids";
      description = "Haskell 98 Groupoids";
      buildType = "Simple";
    };
    components = {
      "groupoids" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }