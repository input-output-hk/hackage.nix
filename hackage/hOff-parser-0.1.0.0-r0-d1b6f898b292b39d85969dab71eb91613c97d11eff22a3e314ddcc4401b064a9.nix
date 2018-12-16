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
        name = "hOff-parser";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/hOff";
      url = "";
      synopsis = "The parser to parser the OFF(Object File Format, Princeton ModelNet).";
      description = "The parser to parset the OFF(Object File Format, Princeton ModelNet dataset) to help other program to display these data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }