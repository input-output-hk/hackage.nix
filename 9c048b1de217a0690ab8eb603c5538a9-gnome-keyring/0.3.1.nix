{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gnome-keyring";
          version = "0.3.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-gnome-keyring/";
        url = "";
        synopsis = "Bindings for libgnome-keyring";
        description = "The GNOME Keyring is a service for securely storing per-user secret\ninformation, such as passwords and encryption keys. This library is a\nbinding to the libgnome-keyring C library.\n\nDocumentation for the original library is available at\n<http://library.gnome.org/devel/gnome-keyring/stable/>.";
        buildType = "Simple";
      };
      components = {
        gnome-keyring = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.time
          ];
          libs = [ pkgs.gnome-keyring ];
          pkgconfig = [
            pkgconfPkgs.gnome-keyring-1
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }