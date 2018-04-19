{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pgdl";
          version = "7.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "sifmelcara";
        author = "sifmelcara";
        homepage = "";
        url = "";
        synopsis = "pgdownloader";
        description = "a terminal user interface program that downloads a video from html and call vlc to play it immediately.\n\nClient: Only for Linux and MACOSX.\n\nServer: Only for nginx's file download page.\n\nThe program will sort the files by date while files in nginx's download page just sort in file name.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pgdl = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.tagsoup
              hsPkgs.network-uri
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
              hsPkgs.configurator
              hsPkgs.HTTP
              hsPkgs.filepath
              hsPkgs.Cabal
            ];
          };
        };
      };
    }