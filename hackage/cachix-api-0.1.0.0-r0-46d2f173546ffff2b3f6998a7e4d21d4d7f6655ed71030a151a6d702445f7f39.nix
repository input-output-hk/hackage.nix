{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cachix-api";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Domen Kožar";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://github.com/githubuser/cachix-api#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/cachix/cachix-api#readme>";
      buildType = "Simple";
    };
    components = {
      "cachix-api" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.servant-auth-server)
          (hsPkgs.servant-auth-swagger)
          (hsPkgs.servant-generic)
          (hsPkgs.servant-streaming)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui-core)
          (hsPkgs.string-conv)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "cachix-gen-swagger" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cachix-api)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.cookie)
            (hsPkgs.cryptonite)
            (hsPkgs.http-api-data)
            (hsPkgs.http-media)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.servant-auth-server)
            (hsPkgs.servant-auth-swagger)
            (hsPkgs.servant-generic)
            (hsPkgs.servant-streaming)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui-core)
            (hsPkgs.string-conv)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "cachix-api-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cachix-api)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
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
            (hsPkgs.servant-generic)
            (hsPkgs.servant-streaming)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui-core)
            (hsPkgs.string-conv)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }