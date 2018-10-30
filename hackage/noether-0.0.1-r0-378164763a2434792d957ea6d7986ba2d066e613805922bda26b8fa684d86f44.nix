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
        name = "noether";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Soham Chowdhury";
      author = "";
      homepage = "https://github.com/mrkgnao/noether#readme";
      url = "";
      synopsis = "Math in Haskell.";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.safe)
          (hsPkgs.pretty-show)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "noether" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.noether)
          ];
        };
      };
      tests = {
        "noether-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.noether)
            (hsPkgs.hedgehog)
          ];
        };
      };
      benchmarks = {
        "noether-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.noether)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }