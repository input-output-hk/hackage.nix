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
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/concurrent-supply/";
      url = "";
      synopsis = "A fast concurrent unique identifier supply with a pure API";
      description = "A fast supply of concurrent unique identifiers suitable for use\nwithin a single process. Once the initial 'Supply' has been initialized,\nthe remainder of the API is pure. See \"Control.Concurrent.Supply\" for\ndetails.";
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