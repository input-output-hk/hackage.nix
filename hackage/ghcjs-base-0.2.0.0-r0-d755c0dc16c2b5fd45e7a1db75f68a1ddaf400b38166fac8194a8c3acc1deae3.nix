{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ghcjs-base"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "stegeman@gmail.com";
      author = "Luite Stegeman";
      homepage = "http://github.com/ghcjs/ghcjs-base";
      url = "";
      synopsis = "base library for GHCJS";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghcjs-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.ghcjs-prim)
            (hsPkgs.ghcjs-base)
            (hsPkgs.primitive)
            (hsPkgs.quickcheck-unicode)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }