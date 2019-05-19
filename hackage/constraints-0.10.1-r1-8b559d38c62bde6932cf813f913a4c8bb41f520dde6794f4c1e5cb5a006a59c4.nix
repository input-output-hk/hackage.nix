{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "constraints"; version = "0.10.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2011-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/constraints/";
      url = "";
      synopsis = "Constraint manipulation";
      description = "GHC 7.4 gave us the ability to talk about @ConstraintKinds@. They stopped crashing the compiler in GHC 7.6.\n\nThis package provides a vocabulary for working with them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ];
        };
      tests = {
        "spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.constraints) (hsPkgs.hspec) ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }