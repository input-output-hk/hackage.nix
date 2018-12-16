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
        name = "fathead-util";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Ben Moon";
      maintainer = "guiltydolphin@gmail.com";
      author = "Ben Moon";
      homepage = "https://github.com/guiltydolphin/fathead-util";
      url = "";
      synopsis = "Utilities for working with DuckDuckHack's FatHead Instant Answers";
      description = "Utilities for working with DuckDuckHack's FatHead Instant Answers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.hxt)
          (hsPkgs.network-uri)
          (hsPkgs.text)
        ];
      };
    };
  }