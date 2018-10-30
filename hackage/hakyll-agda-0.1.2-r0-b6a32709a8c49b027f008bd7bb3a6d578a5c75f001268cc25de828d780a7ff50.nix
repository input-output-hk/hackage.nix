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
      specVersion = "1.6";
      identifier = {
        name = "hakyll-agda";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Francesco Mazzoli (f@mazzo.li)";
      author = "Francesco Mazzoli (f@mazzo.li)";
      homepage = "https://github.com/bitonic/hakyll-agda";
      url = "";
      synopsis = "Wrapper to integrate literate Agda files with Hakyll";
      description = "Simple module useful to generate blog posts from literate Agda files.\n\nNote: Currently this package requires the development version of Hakyll,\nsee <http://mazzo.li/posts/agda-hakyll.html> for more info.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.Agda)
          (hsPkgs.pandoc)
          (hsPkgs.xhtml)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }