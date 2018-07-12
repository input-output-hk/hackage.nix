{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inline-java";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 EURL Tweag.";
        maintainer = "m@tweag.io";
        author = "Tweag I/O";
        homepage = "http://github.com/tweag/inline-java#readme";
        url = "";
        synopsis = "Java interop via inline Java code in Haskell modules.";
        description = "Please see README.md.";
        buildType = "Simple";
      };
      components = {
        "inline-java" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.distributed-closure
            hsPkgs.filepath
            hsPkgs.ghc-heap-view
            hsPkgs.inline-c
            hsPkgs.jni
            hsPkgs.jvm
            hsPkgs.language-java
            hsPkgs.process
            hsPkgs.singletons
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.thread-local-storage
            hsPkgs.vector
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.jni
              hsPkgs.jvm
              hsPkgs.hspec
              hsPkgs.inline-java
              hsPkgs.singletons
              hsPkgs.text
            ];
            libs = [ pkgs.pthread ];
          };
        };
      };
    }