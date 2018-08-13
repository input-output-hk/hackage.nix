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
        name = "concurrent-rpc";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-concurrent-rpc";
      url = "";
      synopsis = "An abstraction for inter-thread RPC based on MVars";
      description = "This library is small wrapper around `Control.Concurrent.MVar.MVar`s that can\nbe used to implement request-response communication between different threads.";
      buildType = "Simple";
    };
    components = {
      "concurrent-rpc" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }