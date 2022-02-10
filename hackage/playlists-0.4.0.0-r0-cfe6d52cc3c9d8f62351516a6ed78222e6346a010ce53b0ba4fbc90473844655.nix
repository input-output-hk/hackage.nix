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
    flags = { maintainer = false; test-doctest = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "playlists"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2016 Peter Jones";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "playlist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."playlists" or (errorHandler.buildDepError "playlists"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."playlists" or (errorHandler.buildDepError "playlists"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctest)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = if !flags.test-doctest then false else true;
          };
        };
      };
    }