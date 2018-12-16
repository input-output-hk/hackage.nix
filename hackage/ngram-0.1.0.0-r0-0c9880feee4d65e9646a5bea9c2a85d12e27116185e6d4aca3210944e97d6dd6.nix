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
        name = "ngram";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Tom Lippincott";
      maintainer = "tom@cs.jhu.edu";
      author = "Tom Lippincott";
      homepage = "https://github.com/TomLippincott/ngram#readme";
      url = "";
      synopsis = "Ngram models for compressing and classifying text.";
      description = "A library and collection of commands for training, evaluating, and applying n-gram-based sequence models.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
      exes = {
        "ppm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-text)
            (hsPkgs.containers)
            (hsPkgs.ngram)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }