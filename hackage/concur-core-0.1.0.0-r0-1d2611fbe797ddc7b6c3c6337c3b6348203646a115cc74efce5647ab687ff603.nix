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
        name = "concur-core";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 (C) All Rights Reserved.";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/concur#readme";
      url = "";
      synopsis = "A client side web UI framework for Haskell. Core framework.";
      description = "A client side web UI framework for Haskell. Core framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.natural-transformation)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
    };
  }