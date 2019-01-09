{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-imported-from"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carlo@carlo-hamalainen.net";
      author = "Carlo Hamalainen";
      homepage = "https://github.com/carlohamalainen/ghc-imported-from";
      url = "";
      synopsis = "Find the Haddock documentation for a symbol.";
      description = "Given a Haskell module and symbol, determine the URL to the Haddock documentation\nfor that symbol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.ghc-mod)
          (hsPkgs.filepath)
          (hsPkgs.safe)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ] ++ [ (hsPkgs.Cabal) ];
        };
      exes = {
        "fake-ghc-for-ghc-imported-from" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) ];
          };
        "ghc-imported-from" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.ghc-mod)
            (hsPkgs.ghc-imported-from)
            (hsPkgs.filepath)
            (hsPkgs.safe)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            ] ++ [ (hsPkgs.Cabal) ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.ghc-mod)
            (hsPkgs.filepath)
            (hsPkgs.safe)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            ] ++ [ (hsPkgs.Cabal) ];
          };
        };
      };
    }