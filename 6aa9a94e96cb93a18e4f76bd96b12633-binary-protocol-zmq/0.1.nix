{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
      optimize = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "binary-protocol-zmq";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Nicolas Trangez";
        maintainer = "Nicolas Trangez <eikke@eikke.com>";
        author = "Nicolas Trangez";
        homepage = "http://github.com/NicolasT/binary-protocol-zmq";
        url = "";
        synopsis = "Monad to ease implementing a binary network protocol over ZeroMQ";
        description = "The monad provided in this package provides an easy way to implement servers\nand clients which exchange messages (types which are instances of\n@Data.Binary.Binary@) over ZeroMQ sockets.\n\nThis is heavily based on the @Control.Monad.BinaryProtocol@ package by Gregory\nCrosswhite.";
        buildType = "Simple";
      };
      components = {
        binary-protocol-zmq = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.zeromq-haskell
          ];
        };
        exes = {
          test-binary-protocol-zmq = {
            depends  = pkgs.lib.optionals (!(!_flags.tests)) [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }