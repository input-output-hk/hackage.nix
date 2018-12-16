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
        name = "hierarchy";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 (c) John Wiegley. All Rights Reserved.";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/hierarchy";
      url = "";
      synopsis = "Pipes-based library for predicated traversal of generated trees";
      description = "Pipes-based library for predicated traversal of generated trees";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.semigroups)
          (hsPkgs.free)
          (hsPkgs.pipes)
          (hsPkgs.directory)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.semigroups)
          ];
        };
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hierarchy)
            (hsPkgs.pipes)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
          ];
        };
      };
    };
  }