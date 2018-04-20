{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-xpath";
          version = "9.1.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2005-2010 Torben Kuseler, Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Torben Kuseler";
        homepage = "https://github.com/UweSchmidt/hxt";
        url = "";
        synopsis = "The XPath modules for HXT.";
        description = "The Haskell XML Toolbox XPath library.\n\nChanges from 9.1.2: Bug in indexing result sets removed";
        buildType = "Simple";
      };
      components = {
        hxt-xpath = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.hxt
          ];
        };
      };
    }