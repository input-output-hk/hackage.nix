{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linear-circuit"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/linear-circuit";
      url = "";
      synopsis = "Compute resistance of linear electrical circuits";
      description = "Compute resistance of linear electrical circuits.\n\nFor examples see test directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.lapack)
          (hsPkgs.netlib-ffi)
          (hsPkgs.comfort-array)
          (hsPkgs.comfort-graph)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
          ];
        };
      tests = {
        "test-linear-circuit" = {
          depends = [
            (hsPkgs.linear-circuit)
            (hsPkgs.QuickCheck)
            (hsPkgs.comfort-graph)
            (hsPkgs.non-empty)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      };
    }