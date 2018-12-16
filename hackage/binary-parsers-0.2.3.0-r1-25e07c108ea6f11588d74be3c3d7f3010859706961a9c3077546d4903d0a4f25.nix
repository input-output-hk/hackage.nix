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
        name = "binary-parsers";
        version = "0.2.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Winterland";
      maintainer = "drkoster@qq.com";
      author = "Winterland";
      homepage = "https://github.com/winterland1989/binary-parsers";
      url = "";
      synopsis = "Extends binary with parsec/attoparsec style parsing combinators.";
      description = "Extends binary with parsec/attoparsec style parsing combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.binary)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-unicode)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.attoparsec)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
            (hsPkgs.fail)
            (hsPkgs.semigroups)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.binary-parsers)
            (hsPkgs.binary)
            (hsPkgs.attoparsec)
            (hsPkgs.criterion)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.http-types)
            (hsPkgs.case-insensitive)
            (hsPkgs.scanner)
          ];
        };
      };
    };
  }