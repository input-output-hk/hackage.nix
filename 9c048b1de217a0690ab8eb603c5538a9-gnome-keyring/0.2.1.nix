{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gnome-keyring";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "";
        url = "";
        synopsis = "Bindings for libgnome-keyring";
        description = "The GNOME Keyring is a service for securely storing per-user secret\ninformation, such as passwords and encryption keys. This library is a\nbinding to the libgnome-keyring C library.\n\nAPI documentation is available at\n<https://dl.dropbox.com/u/1947532/gnome-keyring_0.2/index.html>.\n\nDocumentation for the original library is available at\n<http://library.gnome.org/devel/gnome-keyring/stable/>.";
        buildType = "Simple";
      };
      components = {
        gnome-keyring = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.time
          ];
          libs = [ pkgs.gnome-keyring ];
          pkgconfig = [
            pkgconfPkgs.gnome-keyring-1
          ];
        };
      };
    }