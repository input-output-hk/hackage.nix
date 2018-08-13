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
        name = "wai-middleware-throttle";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017, Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "WAI Middleware for Request Throttling";
      description = "WAI Middleware for request rate limiting and throttling.\n\nDesigned to be configured in the spirit of the NGinx module.";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-throttle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.token-bucket)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.blaze-builder);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-throttle)
          ];
        };
      };
    };
  }