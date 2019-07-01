{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "g2"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "william.hallahan@yale.edu";
      author = "William Hallahan, Anton Xue";
      homepage = "";
      url = "";
      synopsis = "Haskell symbolic execution engine.";
      description = "A Haskell symbolic execution engine.\nFor details, please see: <https://github.com/BillHallahan/G2>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc)
          (hsPkgs.hashable)
          (hsPkgs.hpc)
          (hsPkgs.HTTP)
          (hsPkgs.liquidhaskell)
          (hsPkgs.liquid-fixpoint)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.reducers)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-base)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary-rc)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "G2" = {
          depends = [
            (hsPkgs.g2)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.hpc)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "QuasiQuote" = {
          depends = [ (hsPkgs.g2) (hsPkgs.base) (hsPkgs.time) ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.g2)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc)
            (hsPkgs.hashable)
            (hsPkgs.hpc)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }