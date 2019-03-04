{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; test-hackage = false; test-strictness = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "stylish-cabal"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "";
      url = "";
      synopsis = "Format Cabal files";
      description = "A tool for nicely formatting your Cabal file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base-compat)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.haddock-library)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.split)
          ];
        };
      sublibs = {
        "test-utils" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.base-compat)
            (hsPkgs.containers)
            (hsPkgs.haddock-library)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.split)
            (hsPkgs.stylish-cabal)
            (hsPkgs.template-haskell)
            (hsPkgs.utf8-string)
            ];
          };
        };
      exes = {
        "stylish-cabal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stylish-cabal)
            ];
          };
        };
      tests = {
        "strictness" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.StrictCheck)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.stylish-cabal)
            ];
          };
        "roundtrip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.test-utils)
            ];
          };
        "roundtrip-hackage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.lens)
            (hsPkgs.mwc-random)
            (hsPkgs.test-utils)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.wreq)
            ];
          };
        };
      };
    }