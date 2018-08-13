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
      specVersion = "1.2";
      identifier = {
        name = "tuple-th";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anotheraddress@gmx.de";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Generate (non-recursive) utility functions for tuples of statically known size";
      description = "Template Haskell functions for generating functions similar to those in Data.List for tuples of statically known size.";
      buildType = "Simple";
    };
    components = {
      "tuple-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
        ];
      };
    };
  }