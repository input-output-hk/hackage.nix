{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { embed = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hyphenation"; version = "0.8.3"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2012-2019 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/hyphenation";
      url = "";
      synopsis = "Configurable Knuth-Liang hyphenation";
      description = "Configurable Knuth-Liang hyphenation\n\nUses the UTF8 encoded hyphenation patterns provided by\nhyph-utf8 from\n<http://www.ctan.org/tex-archive/language/hyph-utf8>\n\nUsage:\n\n>>> hyphenate english_US \"supercalifragilisticexpialadocious\"\n[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]\n\n>>> hyphenate english_US \"hyphenation\"\n[\"hy\",\"phen\",\"ation\"]\n\n>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"\n[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (flags.embed) (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"));
        buildable = true;
      };
    };
  }