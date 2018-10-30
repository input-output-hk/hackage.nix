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
        name = "wai-middleware-caching-lru";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Yann Esposito © 2015";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-lru#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.lrucache)
          (hsPkgs.text)
          (hsPkgs.wai-middleware-caching)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "wai-middleware-caching-lru-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai-middleware-caching-lru)
          ];
        };
      };
    };
  }