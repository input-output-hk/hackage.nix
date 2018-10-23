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
        name = "lca";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lca/";
      url = "";
      synopsis = "Logarithmic online lowest common ancestor calculation";
      description = "Logarithmic online lowest common ancestor calculation";
      buildType = "Simple";
    };
    components = {
      "lca" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }