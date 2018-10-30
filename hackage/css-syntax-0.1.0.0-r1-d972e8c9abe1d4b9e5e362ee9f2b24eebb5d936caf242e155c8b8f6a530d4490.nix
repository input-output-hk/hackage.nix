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
        name = "css-syntax";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Tomas Carnecky <tomas.carnecky@gmail.com>";
      author = "Tomas Carnecky <tomas.carnecky@gmail.com>, Vladimir Shabanov <dev@vshabanov.com>";
      homepage = "";
      url = "";
      synopsis = "High-performance CSS tokenizer and serializer.";
      description = "See https://drafts.csswg.org/css-syntax/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.scientific)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }