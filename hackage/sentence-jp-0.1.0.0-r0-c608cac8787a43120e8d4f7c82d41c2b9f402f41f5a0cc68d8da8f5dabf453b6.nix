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
        name = "sentence-jp";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 aiya000";
      maintainer = "aiya000.develop@gmail.com";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-sentence-jp#readme";
      url = "";
      synopsis = "Easily generating message of japanese natural language";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mecab)
          (hsPkgs.random-shuffle)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }