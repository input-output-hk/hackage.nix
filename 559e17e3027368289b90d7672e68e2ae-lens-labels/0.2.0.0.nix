{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lens-labels";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Integration of lenses with OverloadedLabels.";
      description = "Provides a framework to integrate lenses with GHC's OverloadedLabels extension.";
      buildType = "Simple";
    };
    components = {
      "lens-labels" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
        ];
      };
    };
  }