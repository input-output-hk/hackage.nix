{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbro-contrib";
          version = "0.9.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral at mailoo dot org";
        author = "koral";
        homepage = "https://github.com/k0ral/hbro-contrib/";
        url = "";
        synopsis = "Third-party extensions to hbro.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hbro-contrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.hbro
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.pango
            hsPkgs.process
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.webkit
          ];
        };
      };
    }