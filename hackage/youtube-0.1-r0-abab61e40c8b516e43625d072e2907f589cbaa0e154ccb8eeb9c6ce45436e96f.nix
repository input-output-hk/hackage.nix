{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "youtube";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Upload video to YouTube via YouTube API";
      description = "Upload a video to YouTube via YouTube API.\nThe aim of this program is to simplify uploads of related videos.\n\nFirst you must have the @curl@ executable installed.\n\nIn order to use the @youtube-upload@ command\nyou need a YouTube account and an additional developer account.\nFrom the developer account you get a keyfile.\nIf you want to upload videos you first have to login to YouTube.\nAs a result of this you get an authentication token.\nWrite this authentication token into the @YOUTUBEAUTH@ environment variable.\nIt is queried by @youtube-upload@.\nFor every upload you have to pass the developer keyfile,\nan XML file containing meta data for the video and the video file.\n\nThe XML file must be encoded with UTF-8.\nI found it very useful to generate the XML files\nfrom an XML template file and a CSV table\nusing the @cvsreplace@ command from the @spreadsheet@ package.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "youtube-upload" = {
          depends = [
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.base)
          ];
        };
      };
    };
  }