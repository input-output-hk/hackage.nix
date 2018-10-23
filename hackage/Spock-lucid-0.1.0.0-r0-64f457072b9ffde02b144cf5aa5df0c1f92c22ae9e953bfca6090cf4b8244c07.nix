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
        name = "Spock-lucid";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/Spock-lucid";
      url = "";
      synopsis = "Lucid support for Spock";
      description = "Lucid support for Spock";
      buildType = "Simple";
    };
    components = {
      "Spock-lucid" = {
        depends  = [
          (hsPkgs.Spock)
          (hsPkgs.base)
          (hsPkgs.lucid)
          (hsPkgs.transformers)
        ];
      };
    };
  }