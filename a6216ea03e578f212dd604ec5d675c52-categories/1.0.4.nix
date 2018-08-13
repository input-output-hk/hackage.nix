{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      optimize = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "categories";
        version = "1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2010, Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/categories";
      url = "";
      synopsis = "Categories";
      description = "Categories";
      buildType = "Simple";
    };
    components = {
      "categories" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.void)
        ];
      };
    };
  }