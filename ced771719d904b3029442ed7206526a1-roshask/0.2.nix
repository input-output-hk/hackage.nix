{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      logging = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "roshask";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Anthony Cowley";
        maintainer = "Anthony Cowley <acowley@seas.upenn.edu>";
        author = "Anthony Cowley";
        homepage = "http://github.com/acowley/roshask";
        url = "";
        synopsis = "Haskell support for the ROS robotics framework.";
        description = "Tools for working with ROS in Haskell.\n\nROS (<http://www.ros.org>) is a software\nframework developed by Willow Garage\n(<http://http://www.willowgarage.com/>) that aims\nto provide a standard software architecture for\nrobotic systems. The main idea of the framework\nis to support the development and execution of\nloosely coupled /Node/s connected by typed\n/Topic/s. Each Node represents a locus of\nprocessing, ideally with a minimal interface\nspecified in terms of the types of Topics it\ntakes as input and offers as output.\n\nThis package provides libraries for creating new\nROS Nodes in Haskell, along with the @roshask@\nexecutable for creating new ROS packages and\ngenerating Haskell code from message definition\nfiles (see the ROS documentation for information\non message types).\n\nSee\n<http://github.com/acowley/roshask/wiki> for more\ninformation on getting started.";
        buildType = "Simple";
      };
      components = {
        roshask = {
          depends  = ([
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.Cabal
            hsPkgs.stm
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.BoundedChan
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.SafeSemaphore
            hsPkgs.snap-core
            hsPkgs.snap-server
            hsPkgs.storable-tuple
            hsPkgs.transformers
            hsPkgs.haxr
            hsPkgs.utf8-string
            hsPkgs.uri
            hsPkgs.vector-space
            hsPkgs.filemanip
            hsPkgs.vector
            hsPkgs.filepath
            hsPkgs.xml
            hsPkgs.directory
          ] ++ pkgs.lib.optional _flags.logging hsPkgs.template-haskell) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = {
          roshask = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.binary
              hsPkgs.filepath
              hsPkgs.attoparsec
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.xml
              hsPkgs.pureMD5
              hsPkgs.filemanip
              hsPkgs.data-default-generics
              hsPkgs.roshask
            ];
          };
        };
        tests = {
          testexe = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.roshask
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.attoparsec
              hsPkgs.transformers
              hsPkgs.pureMD5
            ];
          };
          servicetest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.roshask
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.attoparsec
              hsPkgs.transformers
              hsPkgs.pureMD5
              hsPkgs.data-default-generics
              hsPkgs.testpack
            ];
          };
        };
      };
    }