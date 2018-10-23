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
        name = "cmark-lucid";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cmark-lucid";
      url = "";
      synopsis = "Use cmark with Lucid";
      description = "Use cmark with Lucid";
      buildType = "Simple";
    };
    components = {
      "cmark-lucid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmark)
          (hsPkgs.lucid)
        ];
      };
    };
  }