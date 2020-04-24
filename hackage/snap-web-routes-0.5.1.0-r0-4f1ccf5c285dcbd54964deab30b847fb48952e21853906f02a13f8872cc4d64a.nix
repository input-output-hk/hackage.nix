{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
          (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      };
    }