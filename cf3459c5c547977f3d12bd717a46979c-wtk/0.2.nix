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
      specVersion = "1.2.3";
      identifier = {
        name = "wtk";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Bartosz Wojcik";
      maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
      author = "Bartosz Wojcik";
      homepage = "";
      url = "";
      synopsis = "Wojcik Tool Kit";
      description = "Set of simple tools.";
      buildType = "Simple";
    };
    components = {
      "wtk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }