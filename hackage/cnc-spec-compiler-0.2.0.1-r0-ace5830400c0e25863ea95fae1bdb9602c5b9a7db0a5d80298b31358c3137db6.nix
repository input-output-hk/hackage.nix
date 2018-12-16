{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { basicbuild = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cnc-spec-compiler";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010 Intel Corporation";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://software.intel.com/en-us/articles/intel-concurrent-collections-for-cc/";
      url = "";
      synopsis = "Compiler/Translator for CnC Specification Files.";
      description = "Intel (Concurrent Collections) CnC is a data-flow like\ndeterministic parallel programming model, similar to\nstream-processing but in which nodes in the computation graph share data in tables.\nIn CnC, the structure of the graph and metadata about data-access\npatterns are stored in a specification, which can be used by this\ntool to generate code which will orchestrate the execution of the graph.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cnc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.stringtable-atom)
            (hsPkgs.filepath)
            (hsPkgs.split)
            (hsPkgs.parsec)
            (hsPkgs.fgl)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.ansi-terminal)
          ] ++ pkgs.lib.optionals (!flags.basicbuild) [
            (hsPkgs.hubigraph)
            (hsPkgs.graphviz)
            (hsPkgs.HaXml)
            (hsPkgs.haxr)
          ];
        };
      };
    };
  }