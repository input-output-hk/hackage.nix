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
        name = "servant-auth-token-leveldb";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "NCrashed";
      homepage = "https://github.com/ncrashed/servant-auth-token#readme";
      url = "";
      synopsis = "Leveldb backend for servant-auth-token server";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "servant-auth-token-leveldb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson-injector)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.concurrent-extra)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.safecopy)
          (hsPkgs.servant-auth-token)
          (hsPkgs.servant-auth-token-api)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          (hsPkgs.uuid)
          (hsPkgs.vector)
        ];
      };
    };
  }