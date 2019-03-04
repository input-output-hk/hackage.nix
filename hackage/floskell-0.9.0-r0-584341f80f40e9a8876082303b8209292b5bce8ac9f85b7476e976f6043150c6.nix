{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "floskell"; version = "0.9.0"; };
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
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.data-default)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.monad-loops)
          (hsPkgs.monad-dijkstra)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.transformers)
          (hsPkgs.text)
          ];
        };
      exes = {
        "floskell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.floskell)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "floskell-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.floskell)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.hspec)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            ];
          };
        };
      benchmarks = {
        "floskell-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.floskell)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.text)
            ];
          };
        };
      };
    }