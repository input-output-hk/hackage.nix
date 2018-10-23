{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { optimize = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "categories";
        version = "0.54.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2010, Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "categories from category-extras";
      description = "categories from category-extras";
      buildType = "Simple";
    };
    components = {
      "categories" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }