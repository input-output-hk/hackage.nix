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
      specVersion = "1.18";
      identifier = { name = "amazonka-mtl"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/amazonka-mtl#readme";
      url = "";
      synopsis = "MTL-style type-class and deriving-via newtypes for Amazonka";
      description = "This package allows incorporation of AWS actions into any MTL-style function,\n\n> import Amazonka.Data.Text (ToText(..))\n> import Amazonka.S3.ListObjects\n> import Amazonka.S3.Types.Object\n> import Blammo.Logging\n> import Conduit\n> import Control.Lens hiding ((.=))\n> import Control.Monad.AWS as AWS\n>\n> someAction\n>   :: ( MonadIO m\n>      , MonadLogger m\n>      , MonadAWS m\n>      , MonadReader env m\n>      , HasSettings env\n>      )\n>   => m ()\n> someAction = do\n>   Settings {..} <- view settingsL\n>\n>   keys <-\n>     runConduit\n>       $ paginate (newListObjects settingsBucketName)\n>       .| concatMapC (^. listObjectsResponse_contents)\n>       .| concatC\n>       .| mapC (^. object_key . to toText)\n>       .| iterMC (\\k -> logDebug $ k :# [])\n>       .| sinkList\n>\n>   logInfo $ \"Bucket contents\" :# [\"keys\" .= keys]\n\nThis package also provides a number of options for execution:\n\n* Through a concrete transformer: \"Control.Monad.AWS.EnvT\"\n* Through your own reader env and deriving-via: \"Control.Monad.AWS.ViaReader\"\n\nThis package also provides mechanisms for mocking AWS in tests:\n\n* Through a concrete transformer: \"Control.Monad.AWS.MockT\"\n* Through your own reader env and deriving-via: \"Control.Monad.AWS.ViaMock\"\n\nPlease see individual module documentation for all the details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."Blammo" or (errorHandler.buildDepError "Blammo"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-mtl" or (errorHandler.buildDepError "amazonka-mtl"))
            (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-mtl" or (errorHandler.buildDepError "amazonka-mtl"))
            (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }