{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "floskell"; version = "0.10.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done, 2015 Andrew Gibiansky, 2016-2019 Enno Cramer";
      maintainer = "ecramer@memfrob.de";
      author = "Chris Done, Andrew Gibiansky, Tobias Pflug, Pierre Radermecker, Enno Cramer";
      homepage = "https://www.github.com/ennocramer/floskell";
      url = "";
      synopsis = "A flexible Haskell source code pretty printer";
      description = "A flexible Haskell source code pretty printer.\n\nSee the Github page for usage\\/explanation: <https://github.com/ennocramer/floskell>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.monad-dijkstra)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          ];
        };
      exes = {
        "floskell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.floskell)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "floskell-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.floskell)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            ];
          };
        };
      benchmarks = {
        "floskell-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.floskell)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.ghc-prim)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }