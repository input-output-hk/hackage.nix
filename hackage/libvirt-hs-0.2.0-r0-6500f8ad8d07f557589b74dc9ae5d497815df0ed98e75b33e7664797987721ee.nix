{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "libvirt-hs"; version = "0.2.0"; };
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
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.syb) (hsPkgs.unix) ];
        pkgconfig = [ (pkgconfPkgs.libvirt) ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }