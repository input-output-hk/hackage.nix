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
        name = "highjson";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015 - 2017 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/highjson";
      url = "";
      synopsis = "Spec based JSON parsing/serialisation";
      description = "Low boilerplate, easy to use and very fast JSON serialisation and parsing without generics or TemplateHaskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.hvect)
          (hsPkgs.text)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "highjson-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.highjson)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.lens)
          ];
        };
      };
      benchmarks = {
        "highjson-benchmarks" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.highjson)
            (hsPkgs.text)
          ];
        };
      };
    };
  }