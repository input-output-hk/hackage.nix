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
      specVersion = "1.16";
      identifier = {
        name = "shopify";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "davean 2012-2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A haskell API binding for shopify.com";
      description = "A haskell API binding for shopify.com";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.resourcet)
          (hsPkgs.http-conduit)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.time)
          (hsPkgs.base64-bytestring)
          (hsPkgs.control-monad-exception)
        ];
      };
    };
  }