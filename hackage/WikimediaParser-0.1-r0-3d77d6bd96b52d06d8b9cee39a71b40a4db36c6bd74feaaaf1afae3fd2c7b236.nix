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
      specVersion = "1.2";
      identifier = {
        name = "WikimediaParser";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tehgeekmeister@gmail.com";
      author = "Ezekiel Smithburg";
      homepage = "";
      url = "";
      synopsis = "A parser for wikimedia style article markup.";
      description = "Functions to parse various parts of wikimedia markup, or entire articles.  Currently has some french wikipedia specific code and doesn't return the values of some syntax it parses, but most of this will be fixed in the next release.  Feel free to submit a patch yourself using darcs send to my email if you fix any of these problems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }