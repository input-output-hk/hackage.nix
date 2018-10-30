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
        name = "stm-tlist";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/haskell-stm-tlist";
      url = "";
      synopsis = "Mutable, singly-linked list in STM";
      description = "This package provides a mutable, singly-linked list type for use in 'STM'.\nIt is based on the design of @Control.Concurrent.TChan@, and can be used to\nimplement a wide variety of channel types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }