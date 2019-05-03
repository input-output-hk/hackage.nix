{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "oidc-client"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Sho Kuroda";
      maintainer = "Sho Kuroda <krdlab@gmail.com>";
      author = "Sho Kuroda";
      homepage = "https://github.com/krdlab/haskell-oidc-client";
      url = "";
      synopsis = "OpenID Connect 1.0 library for RP";
      description = "This package supports implementing of an OpenID Connect 1.0 Relying Party.\n\nExamples: <https://github.com/krdlab/haskell-oidc-client/tree/master/examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.attoparsec)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.tls)
          (hsPkgs.http-client-tls)
          (hsPkgs.jose-jwt)
          (hsPkgs.cryptonite)
          (hsPkgs.time)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      exes = {
        "scotty-example" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs.base)
            (hsPkgs.oidc-client)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.wai-extra)
            (hsPkgs.scotty)
            (hsPkgs.scotty-cookie)
            (hsPkgs.blaze-html)
            (hsPkgs.cprng-aes)
            (hsPkgs.crypto-random)
            (hsPkgs.base64-bytestring)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.tls)
            (hsPkgs.http-client-tls)
            ];
          };
        };
      tests = {
        "oidc-client-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.oidc-client)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.jose-jwt)
            (hsPkgs.cryptonite)
            (hsPkgs.exceptions)
            (hsPkgs.time)
            (hsPkgs.network-uri)
            ];
          };
        };
      };
    }