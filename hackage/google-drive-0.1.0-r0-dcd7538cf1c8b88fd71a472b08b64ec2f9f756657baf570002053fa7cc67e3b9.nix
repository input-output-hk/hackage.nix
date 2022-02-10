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
      specVersion = "1.10";
      identifier = { name = "google-drive"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Google Drive API access";
      description = "Interacting with the Google Drive API\n\nExample usage:\n\n> import Control.Monad (void)\n> import Data.Conduit (($$+-))\n>\n> import Network.Google.Drive\n>\n> main :: IO ()\n> main = void $ runApi token $ do\n>     root <- getFile \"root\"\n>     items <- listFiles $ ParentEq (fileId root) `And` Untrashed\n>\n>     mapM_ download items\n>\n>   where\n>     download :: File -> Api ()\n>     download file = do\n>         let fd = fileData file\n>\n>         case fileDownloadUrl $ fd of\n>             Nothing -> return ()\n>             Just url -> getSource (T.unpack url) [] $ \\source ->\n>                 source $$+- sinkFile (fileTitle fd)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."google-drive" or (errorHandler.buildDepError "google-drive"))
            (hsPkgs."google-oauth2" or (errorHandler.buildDepError "google-oauth2"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."load-env" or (errorHandler.buildDepError "load-env"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }