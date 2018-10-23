{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "onama";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "williamyaoh@gmail.com";
      author = "William Yao";
      homepage = "";
      url = "";
      synopsis = "HTML-parsing primitives for Parsec.";
      description = "Provides Parsec primitives for parsing various HTML entities.\nRequires Parsec in order to use and combine them.";
      buildType = "Simple";
    };
    components = {
      "onama" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagsoup)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ];
      };
    };
  }