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
        name = "liszt";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/liszt#readme";
      url = "";
      synopsis = "Append only key-list database";
      description = "Please see the README on GitHub at <https://github.com/fumieval/liszt#readme>";
      buildType = "Simple";
    };
    components = {
      "liszt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cpu)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.network)
          (hsPkgs.reflection)
          (hsPkgs.scientific)
          (hsPkgs.sendfile)
          (hsPkgs.stm)
          (hsPkgs.stm-delay)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.winery)
        ];
      };
      exes = {
        "liszt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.liszt)
            (hsPkgs.network)
            (hsPkgs.reflection)
            (hsPkgs.scientific)
            (hsPkgs.sendfile)
            (hsPkgs.stm)
            (hsPkgs.stm-delay)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.winery)
          ];
        };
        "lisztd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.liszt)
            (hsPkgs.network)
            (hsPkgs.reflection)
            (hsPkgs.scientific)
            (hsPkgs.sendfile)
            (hsPkgs.stm)
            (hsPkgs.stm-delay)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.winery)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.gauge)
            (hsPkgs.liszt)
            (hsPkgs.network)
            (hsPkgs.reflection)
            (hsPkgs.scientific)
            (hsPkgs.sendfile)
            (hsPkgs.stm)
            (hsPkgs.stm-delay)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.winery)
          ];
        };
      };
    };
  }