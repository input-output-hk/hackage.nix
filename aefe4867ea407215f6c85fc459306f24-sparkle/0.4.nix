{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sparkle";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2016 EURL Tweag";
        maintainer = "alp.mestanogullari@tweag.io";
        author = "Tweag I/O";
        homepage = "";
        url = "";
        synopsis = "Distributed Apache Spark applications in Haskell";
        description = "See README.md";
        buildType = "Custom";
      };
      components = {
        "sparkle" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.choice
            hsPkgs.distributed-closure
            hsPkgs.jni
            hsPkgs.jvm
            hsPkgs.singletons
            hsPkgs.streaming
            hsPkgs.text
            hsPkgs.vector
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.gt "8.0.1") hsPkgs.jvm-streaming;
        };
        exes = {
          "sparkle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.regex-tdfa
              hsPkgs.sparkle
              hsPkgs.text
              hsPkgs.zip-archive
            ];
          };
        };
      };
    }