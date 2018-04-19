{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bindings-potrace";
          version = "0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "rwbarton@gmail.com";
        author = "Reid Barton";
        homepage = "https://github.com/rwbarton/bindings-potrace";
        url = "";
        synopsis = "Low-level bindings to the potrace bitmap tracing library";
        description = "This package contains low-level bindings to potrace, a library for\ntracing bitmap images. Potrace is available at\n<http://potrace.sourceforge.net/>.\n\nThese bindings are automatically generated using bindings-DSL.\nFor a higher-level, friendlier set of potrace bindings, see\n<http://hackage.haskell.org/package/potrace>.";
        buildType = "Simple";
      };
      components = {
        bindings-potrace = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs.potrace pkgs.m ];
        };
      };
    }