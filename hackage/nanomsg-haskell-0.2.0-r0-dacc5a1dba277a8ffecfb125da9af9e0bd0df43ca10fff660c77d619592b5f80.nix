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
        name = "nanomsg-haskell";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2013 Ivar Nymoen";
      maintainer = "<ivar.nymoen@gmail.com>";
      author = "Ivar Nymoen";
      homepage = "https://github.com/ivarnymoen/nanomsg-haskell";
      url = "";
      synopsis = "Bindings to the nanomsg library";
      description = "This is a Haskell binding for the nanomsg library: <http://nanomsg.org/>.\nThere's support for blocking send and recv, a non-blocking receive,\nand for all the socket types and the functions you need to wire\nthem up and tear them down again.\nMost sockets options are available through accessor and mutator\nfunctions. Sockets are typed, transports are not.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."nanomsg") ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.nanomsg-haskell)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
      benchmarks = {
        "send-messages" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.nanomsg-haskell)
            (hsPkgs.criterion)
          ];
        };
        "vs-zeromq-bindings" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.nanomsg-haskell)
            (hsPkgs.zeromq3-haskell)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }