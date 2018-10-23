{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "TinyLaunchbury";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Elliot Stern <eliyahu.ben.miney@gmail.com>";
      author = "Elliot Stern, David Sankell";
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