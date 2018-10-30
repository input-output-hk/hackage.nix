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
        name = "shortcut-links";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015–∞ Aelve";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/shortcut-links";
      url = "";
      synopsis = "Link shortcuts for use in text markup";
      description = "This package is a database of link shortcuts. A Markdown example:\n@\\[Google\\](\\@w)@ turns into <http://en.wikipedia.org/wiki/Google Google>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
    };
  }