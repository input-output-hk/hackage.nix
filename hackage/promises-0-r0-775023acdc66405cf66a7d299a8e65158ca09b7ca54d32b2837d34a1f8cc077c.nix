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
        name = "promises";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/promises/";
      url = "";
      synopsis = "Lazy demand-driven promises";
      description = "Lazy demand-driven promises";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-st)
        ];
      };
    };
  }