{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-xslt";
          version = "9.1.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2005-2010 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Tim Walkenhorst";
        homepage = "https://github.com/UweSchmidt/hxt";
        url = "";
        synopsis = "The XSLT modules for HXT.";
        description = "The Haskell XML Toolbox XSLT library.";
        buildType = "Simple";
      };
      components = {
        hxt-xslt = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.hxt
            hsPkgs.hxt-xpath
          ];
        };
      };
    }