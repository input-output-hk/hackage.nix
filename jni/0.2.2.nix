{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jni";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 EURL Tweag.";
        maintainer = "m@tweag.io";
        author = "Tweag I/O";
        homepage = "https://github.com/tweag/inline-java/tree/master/jni#readme";
        url = "";
        synopsis = "Complete JNI raw bindings.";
        description = "Please see README.md.";
        buildType = "Simple";
      };
      components = {
        jni = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.inline-c
            hsPkgs.singletons
            hsPkgs.thread-local-storage
          ];
          libs = [ pkgs.jvm ];
        };
      };
    }