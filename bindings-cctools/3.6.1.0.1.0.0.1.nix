{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bindings-cctools";
          version = "3.6.1.0.1.0.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "abdulwahidc@gmail.com";
        author = "Badi' Abdul-Wahid";
        homepage = "http://bitbucket.org/badi/bindings-cctools";
        url = "";
        synopsis = "Bindings to the CCTools WorkQueue C library";
        description = "Details can be found here: <http://www.nd.edu/~ccl/software/workqueue>";
        buildType = "Simple";
      };
      components = {
        bindings-cctools = {
          depends  = ([
            hsPkgs.bindings-DSL
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          libs = [ pkgs.dttools ];
        };
      };
    }