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
      specVersion = "1.2";
      identifier = {
        name = "HHDL";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010, 2011 Serguey Zefirov";
      maintainer = "sergueyz@gmail.com";
      author = "Serguey Zefirov";
      homepage = "http://thesz.mskhug.ru/svn/hhdl/hackage/hhdl/";
      url = "";
      synopsis = "Hardware Description Language embedded in Haskell.";
      description = "Hardware Description Language embedded in Haskell.\nMain distinction from Lava or similar packages is\nthat HHDL supports algebraic types with pattern matching.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }