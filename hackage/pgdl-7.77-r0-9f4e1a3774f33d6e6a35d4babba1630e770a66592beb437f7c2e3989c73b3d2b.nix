{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pgdl"; version = "7.77"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sifmelcara";
      author = "sifmelcara";
      homepage = "";
      url = "";
      synopsis = "pgdownloader";
      description = "a terminal user interface program that downloads a video from html and call vlc to play it immediately.\n(Linux: vlc -f \"video.mp4\", MACOSX: open \"video.mp4\" -a vlc)\n\nClient: Only for Linux and MACOSX.\nServer: Only for nginx's file download page.\n\nThe program will sort the video files and folders by date while files in nginx's download page just sort by name.\n\nFor shortcut keys, please visit https://github.com/sifmelcara/pgdl";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.tagsoup)
            (hsPkgs.network-uri)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.vty-ui)
            (hsPkgs.configurator)
            (hsPkgs.HTTP)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            (hsPkgs.array)
            ];
          };
        };
      };
    }