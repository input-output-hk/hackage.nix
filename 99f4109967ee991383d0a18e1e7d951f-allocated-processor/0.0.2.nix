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
        name = "allocated-processor";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Functional combinators for monadic actions that require allocation and de-allocation";
      description = "See module docs for more information, and \"cv-combinators\" package for example usage.";
      buildType = "Simple";
    };
    components = {
      "allocated-processor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
        ];
      };
    };
  }