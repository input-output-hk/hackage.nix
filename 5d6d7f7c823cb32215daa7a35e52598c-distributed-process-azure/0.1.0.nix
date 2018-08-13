{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      build-demos = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-azure";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Microsoft Azure backend for Cloud Haskell";
      description = "This is a proof of concept Azure backend for Cloud Haskell. It\nprovides just enough functionality to run Cloud Haskell\napplications on Azure virtual machines. You need to create your\nvirtual machines in the Azure management portal; you can then\nuse this backend to copy or verify your executable to the\nvirtual machine, start or terminate Cloud Haskell nodes on those\nvirtual machines, and communicate with those virtual machines\nfrom your local machine.";
      buildType = "Simple";
    };
    components = {
      "distributed-process-azure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.azure-service-api)
          (hsPkgs.filepath)
          (hsPkgs.executable-path)
          (hsPkgs.libssh2)
          (hsPkgs.pureMD5)
          (hsPkgs.bytestring)
          (hsPkgs.distributed-process)
          (hsPkgs.binary)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
          (hsPkgs.transformers)
          (hsPkgs.certificate)
          (hsPkgs.unix)
          (hsPkgs.mtl)
          (hsPkgs.rank1dynamic)
          (hsPkgs.distributed-static)
        ];
      };
      exes = {
        "cloud-haskell-azure-echo" = {
          depends  = pkgs.lib.optionals (_flags.build-demos) [
            (hsPkgs.base)
            (hsPkgs.distributed-process-azure)
            (hsPkgs.distributed-process)
            (hsPkgs.transformers)
          ];
        };
        "cloud-haskell-azure-ping" = {
          depends  = pkgs.lib.optionals (_flags.build-demos) [
            (hsPkgs.base)
            (hsPkgs.distributed-process-azure)
            (hsPkgs.distributed-process)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.libssh2)
          ];
        };
        "cloud-haskell-azure-fib" = {
          depends  = pkgs.lib.optionals (_flags.build-demos) [
            (hsPkgs.base)
            (hsPkgs.distributed-process-azure)
            (hsPkgs.distributed-process)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.binary-generic)
            (hsPkgs.rank1dynamic)
            (hsPkgs.distributed-static)
            (hsPkgs.random)
          ];
        };
      };
    };
  }