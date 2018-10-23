{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "analyze";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/analyze#readme";
      url = "";
      synopsis = "making data science easy and safe with data frames";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "analyze" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.exceptions)
          (hsPkgs.foldl)
          (hsPkgs.free)
          (hsPkgs.hashable)
          (hsPkgs.lucid)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "analyze-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.analyze)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.foldl)
            (hsPkgs.QuickCheck)
            (hsPkgs.unordered-containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }