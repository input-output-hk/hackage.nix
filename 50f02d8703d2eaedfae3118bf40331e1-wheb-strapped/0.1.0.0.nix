{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wheb-strapped";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@khanson.io";
        author = "Kyle";
        homepage = "https://github.com/hansonkd/Wheb-Framework";
        url = "";
        synopsis = "Strapped templates for Wheb";
        description = "Implements basic functionality for:\n\n* <http://hackage.haskell.org/package/StrappedTemplates StrappedTemplates>\n\n* <http://hackage.haskell.org/package/Wheb Wheb>\n\n/In action:/\n\nUse with language extensions /OverloadedStrings/, /FlexibleInstances/, /MultiParamTypeClasses/\n\n>  import           Control.Monad.Except\n>\n>  import           Web.Wheb\n>  import           Web.Wheb.Plugins.Strapped\n>  import           Text.Strapped\n>\n>  type MyApp = WhebT MyGlobalCtx () IO\n>\n>  data MyGlobalCtx = MyGlobalCtx (StrappedContainer MyApp)\n>\n>  instance StrappedApp MyGlobalCtx MyApp where\n>      getStrappedContainer (MyGlobalCtx g) = g\n>\n>  main :: IO ()\n>  main = do\n>   opts <- generateOptions \$ do\n>     sc <- initStrapped \"examples/resources\" \".html\"\n>     addGET \".\" rootPat \$ renderTemplate \"index.html\" (emptyBucket)\n>     return (MyGlobalCtx sc, ())\n>   runWhebServer opts";
        buildType = "Simple";
      };
      components = {
        "wheb-strapped" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.Wheb
            hsPkgs.StrappedTemplates
            hsPkgs.text
          ];
        };
      };
    }