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
      specVersion = "1.8";
      identifier = {
        name = "haskell-aliyun";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "https://github.com/yihuang/haskell-aliyun/";
      url = "";
      synopsis = "haskell client of aliyun service.";
      description = "See git page (https://github.com/yihuang/haskell-aliyun/)";
      buildType = "Simple";
    };
    components = {
      "haskell-aliyun" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.Crypto)
          (hsPkgs.data-default)
          (hsPkgs.resourcet)
          (hsPkgs.basic-prelude)
          (hsPkgs.base64-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.blaze-builder)
          (hsPkgs.lifted-base)
          (hsPkgs.xml2json)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.safe)
          (hsPkgs.system-filepath)
        ];
      };
    };
  }