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
      specVersion = "1.6";
      identifier = {
        name = "lens-family-core";
        version = "1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012,2013,2014,2017 Russell O'Connor";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "Haskell 98 Lens Families";
      description = "This package provides first class(†) functional references.\nIn addition to the usual operations of getting, setting and composition, plus integration with the state monad, lens families provide some unique features:\n\n* Polymorphic updating\n\n* Traversals\n\n* Cast projection functions to read-only lenses\n\n* Cast \\\"toList\\\" functions to read-only traversals\n\n* Cast semantic editor combinators to modify-only traversals.\n\n(†) For optimal first-class support use the @lens-family@ package with rank 2 / rank N polymorphism.\n\"Lens.Family.Clone\" allows for first-class support of lenses and traversals for those who require Haskell 98.";
      buildType = "Simple";
    };
    components = {
      "lens-family-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
    };
  }