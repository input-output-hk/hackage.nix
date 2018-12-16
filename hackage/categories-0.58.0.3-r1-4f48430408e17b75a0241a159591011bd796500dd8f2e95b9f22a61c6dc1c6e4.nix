{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { optimize = false; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "categories";
        version = "0.58.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2010, Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/categories";
      url = "";
      synopsis = "categories from category-extras";
      description = "categories from category-extras";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.void)
        ];
      };
    };
  }