{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { repa = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Rlang-QQ";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "http://code.haskell.org/~aavogt/Rlang-QQ";
      url = "";
      synopsis = "quasiquoter for inline-R code";
      description = "This quasiquoter calls R (<http://www.r-project.org/>) from ghc.\nVariables from the haskell-side are passed in, and\nvariables created (or modified) are returned as the value\nof the quasiquote.\n\nThe R package knitr is used, which allows recording plots. But\nfor this to work, you need to install it first, for example with:\n\n> R --no-save <<< 'install.packages(\"knitr\")'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.HList)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.SHA)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.zlib)
        ] ++ pkgs.lib.optional (flags.repa) (hsPkgs.repa);
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.Rlang-QQ)
          ];
        };
      };
    };
  }