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
      identifier = { name = "wheb-redis"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@khanson.io";
      author = "Kyle";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "Redis connection for Wheb";
      description = "Implements basic functionality for:\n\n* <http://hackage.haskell.org/package/hedis Hedis>\n\n* <http://hackage.haskell.org/package/Wheb Wheb>\n\nGives instances of Auth, Session and Cache backends for Wheb.\n\n/In action:/\n\nUse with language extensions /OverloadedStrings/\n\n>  import Web.Wheb\n>  import Web.Wheb.Plugins.Redis\n>\n>  data MyCtx = MyCtx RedisContainer\n>\n>  instance RedisApp MyCtx where\n>    getRedisContainer (MyCtx rc) = rc\n>\n>  main :: IO ()\n>  main = do\n>    opts <- generateOptions \$ do\n>        r <- initRedis defaultConnectInfo\n>        addGET \"home\" rootPat ((runRedis \$ get \"hello\") >>= (text . spack))\n>        return (MyCtx r, ())\n>\n>    runRawHandler opts \$ do\n>        runRedis \$ set \"hello\" \"world\"\n>\n>    runWhebServer opts";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."Wheb" or (errorHandler.buildDepError "Wheb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          ];
        buildable = true;
        };
      };
    }