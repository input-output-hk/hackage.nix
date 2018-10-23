{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "zeromq-haskell";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2010 Toralf Wittner, David Himmelstrup";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "bindings to zeromq";
      description = "Bindings to zeromq (http://zeromq.org)";
      buildType = "Simple";
    };
    components = {
      "zeromq-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."zmq") ];
      };
    };
  }