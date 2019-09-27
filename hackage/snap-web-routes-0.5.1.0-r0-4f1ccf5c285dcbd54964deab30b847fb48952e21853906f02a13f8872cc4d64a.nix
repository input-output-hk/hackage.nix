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
      identifier = { name = "snap-web-routes"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke.randall@gmail.com";
      author = "Luke Randall";
      homepage = "https://github.com/lukerandall/snap-web-routes";
      url = "";
      synopsis = "Type safe URLs for Snap";
      description = "Type safe URL generation and routing for Snap using <http://hackage.haskell.org/package/web-routes web-routes>, and builds on <https://github.com/stepcut/snap-web-routes-demo work>\ndone by Jeremy Shaw.\n\nGet started with the comprehensive  __<https://github.com/lukerandall/snap-web-routes/blob/master/README.md tutorial>__.\n\n= Brief overview\n\nIt allows you to define a data type that represents the routes in your application:\n\n> data AppUrl\n>     = Login                   -- routes to /login\n>     | Logout                  -- routes to /logout\n>     | User (Resource UserId)  -- provides RESTful routes at /user\n\n'Resource' is documented in Snap.Snaplet.Router.REST, and makes defining RESTful routes easier. Also provided are functions to use the URL data type in your app:\n\n> someHandler :: Handler App App ()\n> someHandler :: doSomething >> redirectURL \$ User Index\n\nand to generate URLs in views:\n\n> linksHandler :: Handler App App ()\n> linksHandler = heistLocal (I.bindSplices linksSplices) \$ render \"links\"\n>   where\n>     linksSplices = do\n>         \"loginUrl\" ## urlSplice Login\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."heist" or (buildDepError "heist"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      };
    }