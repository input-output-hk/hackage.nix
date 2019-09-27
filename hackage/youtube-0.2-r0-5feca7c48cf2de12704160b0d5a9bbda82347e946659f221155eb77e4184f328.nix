let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "youtube"; version = "0.2"; };
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
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "youtube-upload" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }