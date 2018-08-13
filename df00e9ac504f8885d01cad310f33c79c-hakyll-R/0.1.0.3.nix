{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hakyll-R";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "";
      url = "";
      synopsis = "A package allowing to write Hakyll blog posts in Rmd";
      description = "This package allows to write blog posts for Hakyll in R-markdown. The R code inside the markdown will be rendered and inserted in the blog post, for example as a plot.";
      buildType = "Simple";
    };
    components = {
      "hakyll-R" = {
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