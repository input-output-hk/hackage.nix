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
      specVersion = "1.8";
      identifier = {
        name = "hindent";
        version = "5.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done, 2015 Andrew Gibiansky";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, Andrew Gibiansky, Tobias Pflug, Pierre Radermecker";
      homepage = "https://github.com/commercialhaskell/hindent";
      url = "";
      synopsis = "Extensible Haskell pretty printer";
      description = "Extensible Haskell pretty printer. Both a library and an executable.\n\nSee the Github page for usage\\/explanation: <https://github.com/commercialhaskell/hindent>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "hindent" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hindent)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.unix-compat)
            (hsPkgs.deepseq)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "hindent-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hindent)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.hspec)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.utf8-string)
            (hsPkgs.Diff)
          ];
        };
      };
      benchmarks = {
        "hindent-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hindent)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
          ];
        };
      };
    };
  }