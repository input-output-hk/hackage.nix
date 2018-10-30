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
      specVersion = "1.8";
      identifier = {
        name = "wheb-mongo";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hanooter@gmail.com";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "MongoDB plugin for Wheb";
      description = "Wheb plugin for MongoDB.\n\n* Implements SessionBackend and AuthBackend instances using MongoDB and Wheb.\n\n* Creates simple interface for arbitrary MongoDB actions using <http://hackage.haskell.org/package/Wheb Wheb>\n\n* Creates simple interface for arbitrary MongoDB actions using <http://hackage.haskell.org/package/mongoDB mongoDB>\n\nFor a complete example, see the examples folder at <https://github.com/hansonkd/Wheb-Framework/tree/master/examples github>\n\nYou can override the collection names for the Auth and Session documents by using 'addSetting' and setting keys for \\\"session-collection\\\"\nand \\\"auth-collection\\\"\n\n> opts <- generateOptions \$ do\n>    addSetting \"session-collection\" \"my-collection\"\n\nReimplimentation of official example below. Use with language extensions /OvererloadedStrings/ & /ExtendedDefaultRules/.\n\n>  import qualified Data.Text.Lazy as T\n>\n>  import           Web.Wheb\n>  import           Web.Wheb.Plugins.Mongo\n>\n>  data MyApp = MyApp MongoContainer\n>  data MyRequestState = MyRequestState\n>\n>  instance MongoApp MyApp where\n>      getMongoContainer (MyApp mc) = mc\n>\n>  homePage :: WhebHandler MyApp MyRequestState\n>  homePage = do\n>      teams <- runAction \$ rest =<< find (select [] \"team\")\n>      text \$ T.intercalate \" | \" \$ map spack teams\n>\n>  main :: IO ()\n>  main = do\n>    opts <- generateOptions \$ do\n>      addGET \".\" rootPat \$ homePage\n>      mongo <- initMongo \"127.0.0.1:27017\" \"master\"\n>      return (MyApp mongo, MyRequestState)\n>\n>    runRawHandler opts \$ do\n>      runAction \$ do\n>          delete (select [] \"team\")\n>          insertMany \"team\" [\n>              [\"name\" =: \"Yankees\", \"home\" =: [\"city\" =: \"New York\", \"state\" =: \"NY\"], \"league\" =: \"American\"],\n>              [\"name\" =: \"Mets\", \"home\" =: [\"city\" =: \"New York\", \"state\" =: \"NY\"], \"league\" =: \"National\"],\n>              [\"name\" =: \"Phillies\", \"home\" =: [\"city\" =: \"Philadelphia\", \"state\" =: \"PA\"], \"league\" =: \"National\"],\n>              [\"name\" =: \"Red Sox\", \"home\" =: [\"city\" =: \"Boston\", \"state\" =: \"MA\"], \"league\" =: \"American\"] ]\n>\n>    runWhebServer opts";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mongoDB)
          (hsPkgs.Wheb)
          (hsPkgs.bson)
          (hsPkgs.mtl)
        ];
      };
    };
  }