{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { gpl = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "git-vogue";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "https://github.com/anchor/git-vogue";
      url = "";
      synopsis = "A framework for pre-commit checks.";
      description = "Make your Haskell git repositories fashionable.";
      buildType = "Custom";
    };
    components = {
      "git-vogue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.list-tries)
          (hsPkgs.formatting)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.optparse-applicative)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.hlint)
          (hsPkgs.stylish-haskell)
          (hsPkgs.ghc-mod)
        ];
      };
      exes = {
        "git-vogue" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.git-vogue)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
          ];
        };
        "git-vogue-cabal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.git-vogue)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
        "git-vogue-hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hlint)
            (hsPkgs.cpphs)
            (hsPkgs.bifunctors)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.git-vogue)
            (hsPkgs.hscolour)
            (hsPkgs.process)
          ];
        };
        "git-vogue-stylish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.git-vogue)
            (hsPkgs.process)
            (hsPkgs.strict)
            (hsPkgs.stylish-haskell)
          ];
        };
        "git-vogue-ghc-mod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.git-vogue)
            (hsPkgs.process)
            (hsPkgs.strict)
            (hsPkgs.ghc-mod)
          ];
        };
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.git-vogue)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }