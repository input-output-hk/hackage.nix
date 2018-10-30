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
        name = "timeless";
        version = "1.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rongcuid@outlook.com";
      author = "Rongcui Dong";
      homepage = "https://github.com/carldong/timeless";
      url = "";
      synopsis = "An Arrow based Functional Reactive Programming library";
      description = "Timeless aims to be a comprehensive FRP framework. Version 1 tries to build a system like the book Functional Reactive Programming";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.ansi-terminal)
          (hsPkgs.linear)
        ];
      };
    };
  }