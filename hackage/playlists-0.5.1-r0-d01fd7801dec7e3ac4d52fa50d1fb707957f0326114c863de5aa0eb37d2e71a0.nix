{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "playlists"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2020 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/playlists";
      url = "";
      synopsis = "Library and executable for working with playlist files.";
      description = "Playlists is a library for working with media playlist files.  The\noriginal motivation for the library was extracting URLs for\nstreaming radio stations that use PLS and M3U playlist files.\n\nThe package also includes an executable that can dump the URLs from\na playlist file and convert between playlist file formats.\n\n/Example:/\n\n> import qualified Data.ByteString as BS\n> import Text.Playlist\n>\n> readPlaylist :: Format -> IO Playlist\n> readPlaylist fmt = do\n>   content <- BS.getContents\n>   case parsePlaylist fmt content of\n>     Left err -> fail $ \"failed to parse playlist on stdin: \" ++ err\n>     Right x  -> return x\n\n/Playlist Executable Examples:/\n\n> $ playlist urls --format PLS < somefile.pls\n>\n> $ playlist convert --from PLS --to M3U < somefile.pls";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
        ];
        buildable = true;
      };
      exes = {
        "playlist" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."playlists" or (errorHandler.buildDepError "playlists"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."playlists" or (errorHandler.buildDepError "playlists"))
          ];
          buildable = true;
        };
      };
    };
  }