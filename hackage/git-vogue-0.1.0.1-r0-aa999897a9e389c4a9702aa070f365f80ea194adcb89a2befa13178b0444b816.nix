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
        version = "0.1.0.1";
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
          (hsPkgs.MissingH)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.formatting)
          (hsPkgs.split)
          (hsPkgs.text)
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
            (hsPkgs.git-vogue)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
          ];
        };
        "git-vogue-cabal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.optparse-applicative)
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
            (hsPkgs.optparse-applicative)
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
            (hsPkgs.optparse-applicative)
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
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.strict)
            (hsPkgs.ghc-mod)
          ];
        };
      };
      tests = {
        "test-git-setup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.git-vogue)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
        "test-plugins" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.git-vogue)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }