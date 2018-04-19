{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wheb-redis";
          version = "0.0.1.0";
        };
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
        wheb-redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.Wheb
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.hedis
          ];
        };
      };
    }