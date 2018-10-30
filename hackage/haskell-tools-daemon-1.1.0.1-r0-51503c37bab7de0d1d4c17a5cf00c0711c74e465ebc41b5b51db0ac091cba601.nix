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
        name = "haskell-tools-daemon";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Background process for Haskell-tools that editors can connect to.";
      description = "Background process for Haskell-tools that provides a way to use the tools on a\nwhole project. It also makes it possible to use the tools on the project in a\nsession, reloading modules when needed. The daemon library is independent of\nthe actual set of tools, and takes them as a parameter, so the system can be\neasily extended by creating a simple new Main module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.strict)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.references)
          (hsPkgs.network)
          (hsPkgs.Diff)
          (hsPkgs.Cabal)
          (hsPkgs.pretty)
          (hsPkgs.optparse-applicative)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-tools-prettyprint)
          (hsPkgs.haskell-tools-refactor)
          (hsPkgs.haskell-tools-builtin-refactorings)
          (hsPkgs.fswatch)
        ];
      };
      exes = {
        "ht-daemon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-tools-daemon)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-tools-builtin-refactorings)
          ];
        };
      };
      tests = {
        "haskell-tools-daemon-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.ghc)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.aeson)
            (hsPkgs.Glob)
            (hsPkgs.haskell-tools-daemon)
            (hsPkgs.haskell-tools-builtin-refactorings)
          ];
        };
      };
    };
  }