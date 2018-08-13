{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-fork";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "me@utdemir.com";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/distributed-fork";
      url = "";
      synopsis = "Like 'forkIO', but uses remote machines instead of local threads.";
      description = "This library provides a way to offload a computation to another machine.\n\nIt uses pluggable 'Backend''s to spawn remote executors. It currently only supports AWS Lambda using <http://hackage.haskell.org/package/distributed-fork-aws-lambda distributed-fork-aws-lambda> library.\n\nSee <https://github.com/utdemir/distributed-fork README> for the rationale behind the library and \"Control.Distributed.Fork\" module for the usage.";
      buildType = "Simple";
    };
    components = {
      "distributed-fork" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.distributed-closure)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.terminal-size)
          (hsPkgs.transformers)
          (hsPkgs.typed-process)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.distributed-fork)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }