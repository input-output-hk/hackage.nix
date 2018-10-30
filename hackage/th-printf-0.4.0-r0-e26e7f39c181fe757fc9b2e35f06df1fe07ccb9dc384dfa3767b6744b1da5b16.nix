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
        name = "th-printf";
        version = "0.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "https://github.com/pikajude/th-printf";
      url = "";
      synopsis = "Compile-time printf";
      description = "Quasiquoters for printf: string, bytestring, text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.attoparsec)
          (hsPkgs.charset)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "format" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-printf)
          ];
        };
      };
      benchmarks = {
        "perf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.th-printf)
          ];
        };
      };
    };
  }