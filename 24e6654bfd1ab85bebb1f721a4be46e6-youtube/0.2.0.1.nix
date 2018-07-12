{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "youtube";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "";
        url = "";
        synopsis = "Upload video to YouTube via YouTube API";
        description = "Upload a video to YouTube via YouTube API.\nThe aim of this program is to simplify uploads of related videos.\n\nFirst you must have the @curl@ executable installed.\n\nIn order to use the @youtube-upload@ command\nyou need a YouTube account and an additional developer account.\nFrom the developer account you get a keyfile.\nIf you want to upload videos you first have to login to YouTube.\nYou can do this with\n\n> youtube-auth your_youtube_login\n\nor\n\n> export YOUTUBEUSER=your_youtube_login\n> youtube-auth\n\nAs a result of this call you get an authentication token.\nWrite this authentication token into the @YOUTUBEAUTH@ environment variable.\nIt is queried by @youtube-upload@.\nFor every upload you have to pass the developer keyfile,\nan XML file containing meta data for the video and the video file.\n\nThe XML file must be encoded with UTF-8.\nI found it very useful to generate the XML files\nfrom an XML template file and a CSV table\nusing the @cvsreplace@ command from the @spreadsheet@ package.\nI have included the example file @upload-template.xml@\nthat you can use with a CSV file\nwith the columns @TITLE@, @DESCRIPTION@, @CATEGORY@, @TAGS@.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "youtube-auth" = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          "youtube-upload" = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.base
            ];
          };
        };
      };
    }