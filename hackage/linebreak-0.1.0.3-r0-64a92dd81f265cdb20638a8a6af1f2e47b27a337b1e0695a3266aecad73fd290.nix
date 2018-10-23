{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "linebreak";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://ariis.it/items/linebreak/page.html";
      url = "";
      synopsis = "breaks strings to fit width";
      description = "Simple functions to break a String to fit a maximum text\nwidth, using Knuth-Liang hyphenation algorhitm.";
      buildType = "Simple";
    };
    components = {
      "linebreak" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hyphenation)
        ];
      };
    };
  }