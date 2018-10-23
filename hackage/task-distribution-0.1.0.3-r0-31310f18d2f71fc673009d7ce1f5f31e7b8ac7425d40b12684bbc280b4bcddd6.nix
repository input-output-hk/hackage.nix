{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "task-distribution";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Axel Mannhardt";
      maintainer = "7a3ggptwts@snkmail.com";
      author = "Axel Mannhardt";
      homepage = "http://github.com/michaxm/task-distribution#readme";
      url = "";
      synopsis = "Distributed processing of changing tasks";
      description = "A framework for distributing tasks running on HDFS data using Cloud Haskell.\nThe goal is speedup through distribution on clusters using regular hardware.\nThis framework provides different, simple workarounds to transport new code to other cluster nodes.\nSee project home / README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "task-distribution" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hint)
          (hsPkgs.binary)
          (hsPkgs.temporary)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.packman)
          (hsPkgs.process)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-simplelocalnet)
          (hsPkgs.rank1dynamic)
          (hsPkgs.distributed-static)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.hslogger)
          (hsPkgs.time)
          (hsPkgs.hashable)
          (hsPkgs.zlib)
          (hsPkgs.bzlib)
          (hsPkgs.hadoop-rpc)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.async)
        ];
      };
      exes = {
        "slave" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.task-distribution)
            (hsPkgs.hslogger)
            (hsPkgs.containers)
            (hsPkgs.json)
            (hsPkgs.strings)
            (hsPkgs.bytestring)
          ];
        };
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.task-distribution)
            (hsPkgs.hslogger)
            (hsPkgs.containers)
            (hsPkgs.json)
            (hsPkgs.strings)
            (hsPkgs.bytestring)
          ];
        };
        "task-distribution-object-code-remote" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.binary)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.filepath)
            (hsPkgs.distributed-process)
            (hsPkgs.async)
            (hsPkgs.hadoop-rpc)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.zlib)
            (hsPkgs.bzlib)
          ];
        };
        "run-demo-task" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.zlib)
            (hsPkgs.split)
            (hsPkgs.async)
          ];
        };
        "test-visit-performance" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.containers)
            (hsPkgs.json)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "test-node-matching" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.task-distribution)
            (hsPkgs.hint)
            (hsPkgs.binary)
            (hsPkgs.temporary)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.packman)
            (hsPkgs.process)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.rank1dynamic)
            (hsPkgs.distributed-static)
            (hsPkgs.text)
            (hsPkgs.hadoop-rpc)
            (hsPkgs.vector)
            (hsPkgs.split)
            (hsPkgs.hslogger)
          ];
        };
      };
    };
  }