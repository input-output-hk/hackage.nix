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
        name = "servant-auth-server";
        version = "0.4.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/haskell-servant/servant-auth#readme";
      url = "";
      synopsis = "servant-server/servant-auth compatibility";
      description = "This package provides the required instances for using the @Auth@ combinator\nin your 'servant' server.\n\nBoth cookie- and token- (REST API) based authentication is provided.\n\nFor a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-conversion)
          (hsPkgs.case-insensitive)
          (hsPkgs.cookie)
          (hsPkgs.crypto-api)
          (hsPkgs.data-default-class)
          (hsPkgs.entropy)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.jose)
          (hsPkgs.lens)
          (hsPkgs.monad-time)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.servant-server)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant-auth)
            (hsPkgs.servant-auth-server)
            (hsPkgs.servant-server)
            (hsPkgs.aeson)
            (hsPkgs.mtl)
            (hsPkgs.warp)
            (hsPkgs.transformers)
            (hsPkgs.markdown-unlit)
          ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.jose)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.servant-server)
            (hsPkgs.transformers)
            (hsPkgs.servant-auth-server)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.http-client)
            (hsPkgs.lens-aeson)
            (hsPkgs.warp)
            (hsPkgs.wreq)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }