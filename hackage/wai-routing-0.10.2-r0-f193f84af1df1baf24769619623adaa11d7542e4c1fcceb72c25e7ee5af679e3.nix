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
      identifier = { name = "wai-routing"; version = "0.10.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/wai-routing/";
      url = "";
      synopsis = "Declarative routing for WAI.";
      description = "Enables the declaration of \\\"routes\\\" which handle requests to a\nspecific URL.\n\nThe set of possible handlers can be restricted by \\\"predicates\\\",\nwhich operate on WAI requests and have to be true or else the\nhandler will not be called.\n\nExample:\n\n>import Data.ByteString (ByteString)\n>import Data.Text (Text)\n>import Network.Wai\n>import Network.Wai.Predicate\n>import Network.Wai.Routing\n>import Network.Wai.Handler.Warp\n>\n>main :: IO ()\n>main = run 8080 (route (prepare start))\n>\n>start :: Monad m => Routes a m ()\n>start = do\n>    get \"/user/:name\" (continue fetchUser) \$\n>        capture \"name\"\n>\n>    get \"/user/find\" (continue findUser) \$\n>        query \"byName\" ||| query \"byId\"\n>\n>    delete \"/user/:name\" rmUser \$\n>        capture \"name\" .&. opt (cookie \"foo\")\n>\n>fetchUser :: Monad m => Text -> m Response\n>fetchUser name = ...\n>\n>findUser :: Monad m => Either ByteString Word64 -> m Response\n>findUser (Left  name)  = ...\n>findUser (Right ident) = ...\n>\n>rmUser :: Monad m => Text ::: Maybe Int -> Continue m -> m ResponseReceived\n>rmUser (name ::: foo) k = k \$ ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-conversion" or (errorHandler.buildDepError "bytestring-conversion"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-predicates" or (errorHandler.buildDepError "wai-predicates"))
          (hsPkgs."wai-route" or (errorHandler.buildDepError "wai-route"))
          ];
        buildable = true;
        };
      tests = {
        "wai-routing-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-conversion" or (errorHandler.buildDepError "bytestring-conversion"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-predicates" or (errorHandler.buildDepError "wai-predicates"))
            (hsPkgs."wai-routing" or (errorHandler.buildDepError "wai-routing"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "wai-routing-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-predicates" or (errorHandler.buildDepError "wai-predicates"))
            (hsPkgs."wai-routing" or (errorHandler.buildDepError "wai-routing"))
            ];
          buildable = true;
          };
        };
      };
    }