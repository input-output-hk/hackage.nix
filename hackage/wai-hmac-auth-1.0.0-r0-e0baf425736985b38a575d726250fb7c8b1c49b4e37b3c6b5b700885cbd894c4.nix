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
        name = "wai-hmac-auth";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014, aidan coyne";
      maintainer = "coynea90@gmail.com";
      author = "aidan coyne";
      homepage = "https://github.com/raptros/wai-hmac-auth";
      url = "";
      synopsis = "hmac authentication tools for WAI apps";
      description = "authenticate requests made to your WAI apps using HMAC.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.bifunctors)
          (hsPkgs.mtl)
          (hsPkgs.cryptohash)
          (hsPkgs.containers)
          (hsPkgs.monad-loops)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-hmac-auth)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.bifunctors)
            (hsPkgs.mtl)
            (hsPkgs.cryptohash)
            (hsPkgs.containers)
            (hsPkgs.monad-loops)
            (hsPkgs.base64-bytestring)
            (hsPkgs.hspec)
            (hsPkgs.byteable)
          ];
        };
      };
    };
  }