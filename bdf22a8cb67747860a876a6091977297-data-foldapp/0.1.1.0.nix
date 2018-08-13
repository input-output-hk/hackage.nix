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
        name = "data-foldapp";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Eric Brisco";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "https://github.com/erisco/data-foldapp";
      url = "";
      synopsis = "Fold function applications. Framework for variadic functions.";
      description = "Fold function applications. Framework for variadic functions.";
      buildType = "Simple";
    };
    components = {
      "data-foldapp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }