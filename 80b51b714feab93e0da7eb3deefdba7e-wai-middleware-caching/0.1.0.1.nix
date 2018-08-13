{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-caching";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Yann Esposito";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme";
      url = "";
      synopsis = "WAI Middleware to cache things";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-caching" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "wai-middleware-caching-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai-middleware-caching)
          ];
        };
      };
    };
  }