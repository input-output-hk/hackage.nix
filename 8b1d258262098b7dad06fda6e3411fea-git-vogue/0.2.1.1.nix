{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      gpl = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "git-vogue";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Anchor Systems, Pty Ltd and Others";
        maintainer = "Oswyn Brent <oztastic703@gmail.com>, Christian Marie <christian@ponies.io>";
        author = "Anchor Engineering <engineering@anchor.com.au>";
        homepage = "https://github.com/christian-marie/git-vogue";
        url = "";
        synopsis = "A framework for pre-commit checks.";
        description = "Make your Haskell git repositories fashionable.";
        buildType = "Custom";
      };
      components = {
        git-vogue = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.formatting
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.split
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
          ];
        };
        exes = {
          git-vogue = {
            depends  = [
              hsPkgs.base
              hsPkgs.git-vogue
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          git-vogue-cabal = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.git-vogue
            ];
          };
          git-vogue-hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.cpphs
              hsPkgs.directory
              hsPkgs.git-vogue
              hsPkgs.haskell-src-exts
              hsPkgs.hlint
              hsPkgs.hscolour
            ];
          };
          git-vogue-stylish = {
            depends  = [
              hsPkgs.base
              hsPkgs.Diff
              hsPkgs.git-vogue
              hsPkgs.strict
              hsPkgs.stylish-haskell
            ];
          };
          git-vogue-ghc-mod = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-mod
              hsPkgs.git-vogue
            ];
          };
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.git-vogue
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.temporary
            ];
            build-tools = [ hsPkgs.git ];
          };
        };
      };
    }