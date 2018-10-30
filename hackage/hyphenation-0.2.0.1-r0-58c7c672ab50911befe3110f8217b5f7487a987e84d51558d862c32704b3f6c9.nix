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
        name = "hyphenation";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/hyphenation";
      url = "";
      synopsis = "Configurable Knuth-Liang hyphenation";
      description = "Configurable Knuth-Liang hyphenation\n\nUses the UTF8 encoded hyphenation patterns provided by\nhyph-utf8 from\n<http://www.ctan.org/tex-archive/language/hyph-utf8>\n\nUsage:\n\n> ghci> hyphenate english_US \"supercalifragilisticexpialadocious\"\n> [\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]\n\n> ghci> hyphenate english_US \"hyphenation\"\n> [\"hy\",\"phen\",\"ation\"]\n\n> ghci> hyphenate icelandic \"vaðlaheiðavegavinnuverkfærageymsluskúr\"\n> [\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }