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
        name = "servant-auth-token-persistent";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "NCrashed";
      homepage = "https://github.com/ncrashed/servant-auth-token#readme";
      url = "";
      synopsis = "Persistent backend for servant-auth-token server";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "servant-auth-token-persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson-injector)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.servant-auth-token)
          (hsPkgs.servant-auth-token-api)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          (hsPkgs.uuid)
        ];
      };
    };
  }