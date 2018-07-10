{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inline-java";
          version = "0.8.3";
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
        inline-java = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.jni
            hsPkgs.jvm
            hsPkgs.language-java
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.temporary
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.jni
              hsPkgs.jvm
              hsPkgs.hspec
              hsPkgs.inline-java
              hsPkgs.text
            ];
          };
        };
      };
    }