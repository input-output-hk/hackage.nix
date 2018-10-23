{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concrete-haskell";
        version = "0.1.0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "2017";
      maintainer = "tom@cs.jhu.edu";
      author = "Thomas Lippincott";
      homepage = "https://github.com/hltcoe";
      url = "";
      synopsis = "Library for the Concrete data format.";
      description = "Concrete is a Thrift-based data specification designed for Natural Language Processing (NLP) applications.  This library provides a Haskell interface to code generated from the latest release of Concrete.  It also has a number of utilities for converting various formats (JSON, CSV, XML, etc) to Concrete Communication objects.";
      buildType = "Simple";
    };
    components = {
      "concrete-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.optparse-generic)
          (hsPkgs.path-io)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
          (hsPkgs.scientific)
          (hsPkgs.tar)
          (hsPkgs.text)
          (hsPkgs.thrift)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.zip)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "ingest_communications" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-generic)
            (hsPkgs.path-io)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.scientific)
            (hsPkgs.tar)
            (hsPkgs.text)
            (hsPkgs.thrift)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.zip)
            (hsPkgs.zlib)
            (hsPkgs.concrete-haskell)
          ];
        };
        "inspect_communications" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-generic)
            (hsPkgs.path-io)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.scientific)
            (hsPkgs.tar)
            (hsPkgs.text)
            (hsPkgs.thrift)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.zip)
            (hsPkgs.zlib)
            (hsPkgs.concrete-haskell)
          ];
        };
      };
      tests = {
        "unit_tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-generic)
            (hsPkgs.path-io)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.scientific)
            (hsPkgs.tar)
            (hsPkgs.text)
            (hsPkgs.thrift)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.zip)
            (hsPkgs.zlib)
            (hsPkgs.concrete-haskell)
          ];
        };
      };
    };
  }