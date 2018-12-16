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
        name = "fluffy-parser";
        version = "0.1.0.50";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "";
      url = "";
      synopsis = "The parser for fluffy to parsec the question bank in .docx type";
      description = "The parser for fluffy to parsec the question bank in .docx type";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.pandoc)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-simple)
          (hsPkgs.binary)
        ];
      };
    };
  }