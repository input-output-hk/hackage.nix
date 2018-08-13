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
        name = "TinyLaunchbury";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Elliot Stern <eliyahu.ben.miney@gmail.com>";
      author = "Elliot Stern, David Sankel";
      homepage = "";
      url = "";
      synopsis = "Simple implementation of call-by-need using Launchbury's semantics";
      description = "A simple implementation of Launchbury's operational semantics for lazy languages.";
      buildType = "Simple";
    };
    components = {
      "TinyLaunchbury" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }