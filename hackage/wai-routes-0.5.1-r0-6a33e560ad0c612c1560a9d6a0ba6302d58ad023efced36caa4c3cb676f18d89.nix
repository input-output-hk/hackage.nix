let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-routes"; version = "0.5.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."yesod-routes" or (buildDepError "yesod-routes"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }