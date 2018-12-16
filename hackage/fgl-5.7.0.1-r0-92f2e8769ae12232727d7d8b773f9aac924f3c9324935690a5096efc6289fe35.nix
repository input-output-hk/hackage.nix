{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      containers042 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fgl";
        version = "5.7.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Martin Erwig, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Martin Erwig's Functional Graph Library";
      description = "An inductive representation of manipulating graph data structures.\n\nOriginal website can be found at <http://web.engr.oregonstate.edu/~erwig/fgl/haskell>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.array)
        ] ++ (if flags.containers042
          then [
            (hsPkgs.containers)
            (hsPkgs.deepseq)
          ]
          else [
            (hsPkgs.containers)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs.ghc-prim);
      };
      tests = {
        "fgl-tests" = {
          depends = [
            (hsPkgs.fgl)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "fgl-benchmark" = {
          depends = [
            (hsPkgs.fgl)
            (hsPkgs.base)
            (hsPkgs.microbench)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }