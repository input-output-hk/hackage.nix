{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "cachix-api"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2018 Domen Kožar";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://github.com/cachix/cachix#readme";
      url = "";
      synopsis = "Servant HTTP API specification for https://cachix.org";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-auth)
          (hsPkgs.servant-auth-server)
          (hsPkgs.servant-auth-swagger)
          (hsPkgs.servant-swagger)
          (hsPkgs.string-conv)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "cachix-gen-swagger" = {
          depends = [ (hsPkgs.aeson) (hsPkgs.base) (hsPkgs.cachix-api) ];
          };
        };
      tests = {
        "cachix-api-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cachix-api)
            (hsPkgs.conduit)
            (hsPkgs.cookie)
            (hsPkgs.cryptonite)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.http-media)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.protolude)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.servant-auth-server)
            (hsPkgs.servant-auth-swagger)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui-core)
            (hsPkgs.string-conv)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }