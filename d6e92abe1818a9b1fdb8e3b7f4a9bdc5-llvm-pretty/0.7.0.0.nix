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
      specVersion = "1.16";
      identifier = {
        name = "llvm-pretty";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awesomelyawesome@gmail.com";
      author = "Trevor Elliott";
      homepage = "";
      url = "";
      synopsis = "A pretty printing library inspired by the llvm binding.";
      description = "A pretty printing library that was inspired by the LLVM binding by Lennart\nAugustsson.  The library provides a monadic interface to a pretty printer,\nthat allows functions to be defined and called, generating the corresponding\nLLVM assemblly when run.";
      buildType = "Simple";
    };
    components = {
      "llvm-pretty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.monadLib)
        ];
      };
    };
  }