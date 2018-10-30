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
        name = "eng-stemmer";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris@foldl.io";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/eng-stemmer";
      url = "";
      synopsis = "An English language stemmer (Porter2)";
      description = "This i";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "eng-stemmer-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.eng-stemmer)
            (hsPkgs.text)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "eng-stemmer-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.eng-stemmer)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.doctest)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }