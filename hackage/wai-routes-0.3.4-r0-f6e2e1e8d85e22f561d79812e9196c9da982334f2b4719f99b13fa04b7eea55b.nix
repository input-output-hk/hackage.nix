{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "wai-routes";
        version = "0.3.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/wai-routes";
      url = "";
      synopsis = "Typesafe URLs for Wai applications.";
      description = "Provides easy to use typesafe URLs for Wai Applications.\n\nSample usage follows (See examples/Example.hs in the source bundle for the full code) -\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings, TypeFamilies &#35;-&#125;\n\nimport Network.Wai\nimport Network.Wai.Middleware.Routes\n\nimport Data.IORef\n\n&#45;&#45; The Site Argument\ndata MyRoute = MyRoute (IORef DB)\n\n&#45;&#45; Generate Routes\nmkRoute \"MyRoute\" &#91;parseRoutes&#124;\n&#47;             UsersR         GET\n&#47;user&#47;&#35;Int    UserR&#58;\n&#32;&#32;/              UserRootR   GET\n&#32;&#32;/delete        UserDeleteR POST\n&#124;&#93;\n\n&#45;&#45; Define Handlers\n&#45;&#45; All Users Page\ngetUsersR &#58;&#58; Handler MyRoute\ngetUsersR (MyRoute dbref) request = ...\n&#45;&#45; Single User Page\ngetUserRootR &#58;&#58; Int -> Handler MyRoute\ngetUserRootR userid (MyRoute dbref) request = ...\n&#45;&#45; Delete Single User\npostUserDeleteR &#58;&#58; Int -> Handler MyRoute\npostUserDeleteR userid (MyRoute dbref) request = ...\n\n&#45;&#45; Define Application using RouteM Monad\nmyApp = do\n&#32;&#32;db <- liftIO &#36; newIORef mydb\n&#32;&#32;route (MyRoute db)\n&#32;&#32;setDefaultAction \$ staticApp \$ defaultFileServerSettings &#34;static&#34;\n\n&#45;&#45; Run the application\nmain &#58;&#58; IO ()\nmain = toWaiApp myApp >>= run 8080\n@";
      buildType = "Simple";
    };
    components = {
      "wai-routes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.conduit)
          (hsPkgs.path-pieces)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.template-haskell)
          (hsPkgs.yesod-routes)
          (hsPkgs.mtl)
        ];
      };
    };
  }