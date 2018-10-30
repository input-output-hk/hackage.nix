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
        name = "hakyll-R";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "";
      url = "";
      synopsis = "A module allowing to write Hakyll blog posts in Rmd";
      description = "This package declares a Compiler for Rmd posts, which allows to include R code in Rmd and have them rendered (for example as plots).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.pandoc)
          (hsPkgs.directory)
        ];
      };
    };
  }