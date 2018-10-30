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
        name = "cerberus";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Yann Esposito";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/cerberus#readme";
      url = "";
      synopsis = "Protect and control API access with cerberus";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-extra)
          (hsPkgs.ekg)
          (hsPkgs.ekg-core)
          (hsPkgs.hslogger)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-middleware-throttle)
          (hsPkgs.wai-middleware-caching)
          (hsPkgs.wai-middleware-caching-lru)
          (hsPkgs.wai-middleware-caching-redis)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "cerberus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.hslogger)
            (hsPkgs.cerberus)
            (hsPkgs.cmdargs)
            (hsPkgs.pretty-show)
          ];
        };
      };
      tests = {
        "cerberus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cerberus)
          ];
        };
      };
    };
  }