{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stateWriter"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "A faster variant of the RWS monad transformers.";
      description = "This is a version of the RWS monad transformers that should be much faster than what's found in transformers. The writer in the strict version does not leak memory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.transformers) (hsPkgs.mtl) ];
        };
      tests = {
        "spaceleak" = {
          depends = [ (hsPkgs.stateWriter) (hsPkgs.base) (hsPkgs.mtl) ];
          };
        "rwscompare" = {
          depends = [
            (hsPkgs.stateWriter)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.free)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.stateWriter)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.vector)
            (hsPkgs.dlist)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }