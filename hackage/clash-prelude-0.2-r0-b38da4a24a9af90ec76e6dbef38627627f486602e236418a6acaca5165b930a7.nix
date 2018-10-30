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
        name = "clash-prelude";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://clash.ewi.utwente.nl/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
        ];
      };
    };
  }