{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libvirt-hs";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "http://redmine.iportnov.ru/projects/libvirt-hs";
        url = "";
        synopsis = "FFI bindings to libvirt virtualization API (http://libvirt.org)";
        description = "This package provides low-level (at this moment, at least) FFI bindings to libvirt library.";
        buildType = "Simple";
      };
      components = {
        libvirt-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
          ];
          libs = [ pkgs.virt ];
        };
      };
    }