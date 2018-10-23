{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "picoparsec";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mario Blažević <blamario@yahoo.com>";
      author = "Mario Blažević <blamario@yahoo.com>";
      homepage = "https://bitbucket.org/blamario/picoparsec";
      url = "";
      synopsis = "Fast combinator parsing for bytestrings and text";
      description = "A fast and flexible parser combinator library, accepting any input type that is an instance of an appropriate\nmonoid subclass.";
      buildType = "Simple";
    };
    components = {
      "picoparsec" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.text)
          (hsPkgs.scientific)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.4") [
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.picoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.parsec)
            (hsPkgs.picoparsec)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }