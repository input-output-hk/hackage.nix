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
      specVersion = "1.8";
      identifier = { name = "snaplet-sass"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke.randall@gmail.com";
      author = "Luke Randall";
      homepage = "https://github.com/lukerandall/snaplet-sass";
      url = "";
      synopsis = "Sass integration for Snap with request- and pre-compilation.";
      description = "Sass integration for Snap with request based compilation during development and precompilation in production.\n\nGet started by reading through the <https://github.com/lukerandall/snaplet-sass README>.\n\n= Brief overview\n\nAdd the snaplet to your App in Application.hs\n\n> import Snap.Snaplet.Sass\n>\n> data App = App [\n>     _sass :: Snaplet Sass\n>     ] -- these should be curly braces but haddock doesn't allow it\n\nIn Site.hs, add a route for sass to serve from and initialize the snaplet\n\n> routes = [..., (\"/sass\", with sass sassServe)]\n>\n> app :: SnapletInit App App\n> app = makeSnaplet \"app\" \"A snaplet example application.\" Nothing $ do\n>   s <- nestSnaplet \"sass\" sass initSass\n> return $ App s\n\nNow add your Sass files to snaplets\\/sass\\/src and they'll be served\nat \\/sass\\//FILE/.css. Take note that the .sass or .scss extension will\nbe replaced with .css.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }