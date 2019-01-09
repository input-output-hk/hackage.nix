{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-with-cabal = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "zephyr"; version = "0.2.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2017-2018 Marcin Szamotulski";
      maintainer = "Marcin Szamotulski <profunctor@pm.me>";
      author = "Marcin Szamotulski <profunctor@pm.me>";
      homepage = "https://github.com/coot/zephyr#readme";
      url = "";
      synopsis = "Zephyr tree shaking for PureScript Language";
      description = "Tree shaking tool and partial evaluator for PureScript\nCoreFn AST.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.boxes)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.Glob)
          (hsPkgs.language-javascript)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.purescript)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.utf8-string)
          ];
        };
      exes = {
        "zephyr" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.formatting)
            (hsPkgs.Glob)
            (hsPkgs.language-javascript)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.purescript)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.zephyr)
            ];
          };
        };
      tests = {
        "zephyr-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.HUnit)
            (hsPkgs.language-javascript)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.purescript)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.zephyr)
            ];
          };
        };
      };
    }