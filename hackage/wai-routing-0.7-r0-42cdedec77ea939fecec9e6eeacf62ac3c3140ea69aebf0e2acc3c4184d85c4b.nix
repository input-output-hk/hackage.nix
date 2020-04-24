{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-routing"; version = "0.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/wai-routing/";
      url = "";
      synopsis = "Declarative routing for WAI.";
      description = "Enables the declaration of \\\"routes\\\" which handle requests to a\nspecific URL.\n\nThe set of possible handlers can be restricted by \\\"predicates\\\",\nwhich operate on WAI requests and have to be true or else the\nhandler will not be called.\n\nExample:\n\n>import Data.ByteString (ByteString)\n>import Data.Text (Text)\n>import Network.Wai\n>import Network.Wai.Predicate\n>import Network.Wai.Routing\n>import Network.Wai.Handler.Warp\n>\n>main :: IO ()\n>main = run 8080 (route (prepare start))\n>\n>start :: Monad m => Routes a m ()\n>start = do\n>    get \"/user/:name\" fetchUser \$\n>        capture \"name\"\n>\n>    get \"/user/find\" findUser \$\n>        query \"byName\" ||| query \"byId\"\n>\n>    delete \"/user/:name\" rmUser \$\n>        capture \"name\" .&. opt (cookie \"foo\")\n>\n>fetchUser :: Monad m => Text -> m Response\n>fetchUser name = ...\n>\n>findUser :: Monad m => Either ByteString Word64 -> m Response\n>findUser (Left  name)  = ...\n>findUser (Right ident) = ...\n>\n>rmUser :: Monad m => Text ::: Maybe Int -> m Response\n>rmUser (name ::: foo)  = ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-from" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-from"))
          (hsPkgs."cookie" or ((hsPkgs.pkgs-errors).buildDepError "cookie"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-predicates" or ((hsPkgs.pkgs-errors).buildDepError "wai-predicates"))
          (hsPkgs."wai-route" or ((hsPkgs.pkgs-errors).buildDepError "wai-route"))
          ];
        buildable = true;
        };
      tests = {
        "wai-routing-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-predicates" or ((hsPkgs.pkgs-errors).buildDepError "wai-predicates"))
            (hsPkgs."wai-routing" or ((hsPkgs.pkgs-errors).buildDepError "wai-routing"))
            ];
          buildable = true;
          };
        };
      };
    }