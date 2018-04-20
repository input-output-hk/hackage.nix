{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "hums";
          version = "0.2.6";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Haskell UPnP Media Server";
        description = "A simple UPnP Media Server.\n\nCurrently this has only been tested with a PlayStation 3 client. Any help/patches for getting it to work with other clients would be much appreciated.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hums = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.regex-compat
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.uuid
              hsPkgs.bytestring
              hsPkgs.MissingH
              hsPkgs.hxt
              hsPkgs.ConfigFile
              hsPkgs.mtl
              hsPkgs.network-bytestring
            ];
          };
        };
      };
    }