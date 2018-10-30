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
        name = "pdf-slave-server";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/NCrashed/pdf-slave-server#readme";
      url = "";
      synopsis = "Web service for pdf-slave tool";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.aeson-injector)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.immortal)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.pdf-slave)
          (hsPkgs.pdf-slave-server-api)
          (hsPkgs.safecopy)
          (hsPkgs.scientific)
          (hsPkgs.servant)
          (hsPkgs.servant-auth-token)
          (hsPkgs.servant-auth-token-acid)
          (hsPkgs.servant-auth-token-api)
          (hsPkgs.servant-server)
          (hsPkgs.shelly)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unbounded-delays)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.wreq)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "pdf-slave-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pdf-slave-server)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }