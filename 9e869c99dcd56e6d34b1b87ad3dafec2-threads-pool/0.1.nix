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
      specVersion = "1.6";
      identifier = {
        name = "threads-pool";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "";
      url = "";
      synopsis = "A library to operate with pool of haskell's IO threads";
      description = "This library allows you to create a pool of worker threads,\ngive them tasks using a queue and receive results. Or not receive,\nif you wan't to. Tasks are monadic computations in any monad which\nbelong to special 'Task' typeclass (it basically means that one can\nrun that computation in IO monad, using some argument).";
      buildType = "Simple";
    };
    components = {
      "threads-pool" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.mtl)
        ];
      };
    };
  }