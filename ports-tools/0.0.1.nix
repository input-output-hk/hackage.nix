{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ports-tools";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "penzin.dev@gmail.com";
        author = "Petr Penzin";
        homepage = "http://github.com/ppenzin/hs-ports-tools/";
        url = "";
        synopsis = "Library to interact with port tools on FreeBSD";
        description = "A set of wrappers for command line utilities used to manage port and\npackages on FreeBSD.";
        buildType = "Simple";
      };
      components = {
        ports-tools = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.directory
          ];
        };
      };
    }