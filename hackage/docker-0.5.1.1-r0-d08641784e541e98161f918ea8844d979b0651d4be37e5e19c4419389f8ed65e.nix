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
        name = "docker";
        version = "0.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "Deni Bertovic <deni@denibertovic.com>";
      author = "Deni Bertovic <deni@denibertovic.com>, James Parker <jp@jamesparker.me>";
      homepage = "https://github.com/denibertovic/docker-hs";
      url = "";
      synopsis = "An API client for docker written in Haskell";
      description = "See API documentation below.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.vector)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.uuid)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.filemanip)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.scientific)
          (hsPkgs.tls)
          (hsPkgs.unordered-containers)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-system)
          (hsPkgs.http-conduit)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "docker-hs-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.docker)
            (hsPkgs.directory)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.process)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }