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
      specVersion = "1.8";
      identifier = {
        name = "haskell-typescript";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2013 David Johnson";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Simple TypeScript API";
      description = "Simple Bindings to the TypeScript compiler";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
        ];
      };
    };
  }