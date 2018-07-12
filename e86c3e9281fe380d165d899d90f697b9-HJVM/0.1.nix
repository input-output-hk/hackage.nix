{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HJVM";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011-2012, JP Moresmau";
        maintainer = "jp@moresmau.fr";
        author = "JP Moresmau";
        homepage = "https://github.com/JPMoresmau/HJVM";
        url = "";
        synopsis = "A library to create a Java Virtual Machine and manipulate Java objects";
        description = "Uses FFI to access JNI to create a JVM. Then the library lets you create and manipulate Java objects.\nThere is also a code generator to generate wrapper Haskell code";
        buildType = "Simple";
      };
      components = {
        "HJVM" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.haskell-src-exts
          ];
          libs = [ pkgs.jvm ];
        };
        tests = {
          "hjvm-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.HJVM
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.parsec
              hsPkgs.haskell-src-exts
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }