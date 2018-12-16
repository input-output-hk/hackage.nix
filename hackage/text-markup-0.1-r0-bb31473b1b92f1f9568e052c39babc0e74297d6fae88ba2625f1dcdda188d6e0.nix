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
        name = "text-markup";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Jonathan Daugherty";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty";
      homepage = "https://github.com/jtdaugherty/text-markup/";
      url = "";
      synopsis = "A data structure for mapping metadata to text subsequences";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-markup-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text-markup)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.quickcheck-text)
          ];
        };
      };
    };
  }