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
      specVersion = "1.12";
      identifier = { name = "mig"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Anton Kholomiov";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/mig#readme";
      url = "";
      synopsis = "Build lightweight and composable servers";
      description = "With library mig we can build lightweight and composable servers.\nThere are only couple of combinators to assemble servers from parts.\nIt supports generic handler functions as servant does. But strives to use more\nsimple model for API. It does not go to describing Server API at type level which\nleads to simpler error messages.\n\nThe main features are:\n\n* lightweight library\n\n* expressive DSL to compose servers\n\n* type-safe handlers\n\n* handlers are encoded with generic haskell functions\n\n* built on top of WAI and warp server libraries.\n\nExample of hello world server:\n\n> import Mig.Json.IO\n>\n> -- | We can render the server and run it on port 8085.\n> -- It uses wai and warp.\n> main :: IO ()\n> main = runServer 8085 server\n>\n> -- | Init simple hello world server which\n> -- replies on a single route\n> server :: Server IO\n> server =\n>   \"api\" /. \"v1\" /.\n>     mconcat\n>       [ \"hello\" /. hello\n>       , \"bye\" /. bye\n>       ]\n>\n> -- | Handler takes no inputs and marked as Get HTTP-request that returns Text.\n> hello :: Get Text\n> hello = Get $ pure \"Hello World\"\n>\n> -- | Handle with URL-param query and json body input as Post HTTP-request that returns Text.\n> bye :: Query \"name\" Text -> Body ByeRequest -> Post Text\n> bye (Query name) (Body req) = Post $\n>   pure $ \"Bye to \" <> name <> \" \" <> req.greeting\n\nPlease see:\n\n* quick start guide at <https://github.com/anton-k/mig#readme>\n\n* examples directory for more fun servers: at <https://github.com/anton-k/mig/tree/main/examples/mig-example-apps#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
    };
  }