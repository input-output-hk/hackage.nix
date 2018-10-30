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
        name = "luachunk";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright 2012, Anupam Jain. All Rights Reserved.";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "Library functions for reading and writing Lua chunks";
      description = "Library functions for reading and writing Lua chunks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.pretty)
          (hsPkgs.custom-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }