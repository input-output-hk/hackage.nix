{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "api-yoti"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Kelecorix Inc., Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak";
      homepage = "https://github.com/sigrlami/api-yoti#readme";
      url = "";
      synopsis = "Api bindings for Yoti services";
      description = "Api bindings for https://www.yoti.com/ digital identity service";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.crypto-simple)
          (hsPkgs.crypto-pubkey-openssh)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.memory)
          (hsPkgs.wreq)
          (hsPkgs.pem)
          (hsPkgs.hashable)
          (hsPkgs.directory)
          (hsPkgs.base64-bytestring)
          ];
        };
      tests = {
        "yoti-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
          };
        };
      };
    }