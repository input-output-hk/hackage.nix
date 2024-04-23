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
      specVersion = "2.4";
      identifier = { name = "from-env"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "Alexander Goussas 2023";
      maintainer = "goussasalexander@gmail.com";
      author = "Alexander Goussas";
      homepage = "";
      url = "";
      synopsis = "Provides a generic way to construct values from environment variables.";
      description = "\nThis package exposes a class `FromEnv` that works with `GHC.Generics` to provide a generic way\nto construct values from environment variables.\n\nIn many applications you'll have a configuration object holding a connection string to your\ndatabase, the url of an S3 bucket, you name it. It can be tedious to have to construct this\nconfiguration object manually. With this package, you just derive `Generic` and then create an\ninstance of `FromEnv` for your configuration type and you're done. Just call `fromEnv` and you got\nyour configuration.\n\n> import System.Environment.FromEnv\n> import GHC.Generics\n> newtype Config = Config { configS3BucketUrl :: String } deriving Generic\n> instance FromEnv Config\n> config <- fromEnv\n\nThe default behaviour is to convert field names like `configS3BucketUrl` into\nenvironment variables like `CONFIG_S3_BUCKET_URL`, but it can be overriden by providing a\ncustom instance of `FromEnv`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "from-env-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."from-env" or (errorHandler.buildDepError "from-env"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }