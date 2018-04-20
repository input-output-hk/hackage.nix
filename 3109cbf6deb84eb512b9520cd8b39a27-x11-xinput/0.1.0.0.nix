{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "x11-xinput";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "http://redmine.iportnov.ru/projects/x11-xinput";
        url = "";
        synopsis = "Haskell FFI bindings for X11 XInput library (-lXi)";
        description = "Haskell FFI bindings for X11 XInput library (-lXi).\nOnly XInput version 2.0 is supported.\nSee XInput manual pages and XInput2.h, XI2.h for more documentation.";
        buildType = "Simple";
      };
      components = {
        x11-xinput = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.X11
          ];
          libs = [ pkgs.Xi ];
        };
      };
    }