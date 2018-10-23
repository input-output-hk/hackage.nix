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
        name = "concurrent-supply";
        version = "0.1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/concurrent-supply/";
      url = "";
      synopsis = "A fast concurrent unique identifier supply with a pure API";
      description = "A fast concurrent unique identifier supply with a pure API";
      buildType = "Simple";
    };
    components = {
      "concurrent-supply" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }