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
      identifier = { name = "StrappedTemplates"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@khanson.io";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/StrappedTemplates";
      url = "";
      synopsis = "General purpose templates in haskell";
      description = "Easy templating in haskell.\n\n>  import Control.Monad.IO.Class\n>  import qualified Blaze.ByteString.Builder as B\n>  import qualified Data.Text.Lazy as T\n>  import Data.Time\n>\n>  import Text.Strapped\n>\n>  makeBucket :: Integer -> InputBucket IO\n>  makeBucket i = bucketFromList\n>        [ (\"is\", List \$ map (LitVal . LitInteger) [1..i])\n>        , (\"ioTime\", Func (\\_ -> (liftIO \$ getCurrentTime) >>= (\\c -> return \$ LitText \$ T.pack \$ show c)))\n>        ]\n>\n>  main :: IO ()\n>  main = do\n>    tmpls <- templateStoreFromDirectory \"benchmarks/strapped_templates\" \".strp\"\n>    case tmpls of\n>      Left err -> print err\n>      Right store -> do\n>        rendered <- render (putStore store defaultConfig) (makeBucket 2) \"base_simple.strp\"\n>        either (print) (print . B.toByteString) rendered\n\n@\n&#160;\$&#x7b; ioTime &#x7d;\n&#160;\n&#160;&#x7b;\$ for i in is \$&#x7d;\n&#160;    \$&#x7b; i &#x7d;\n&#160;&#x7b;\$ endfor \$&#x7d;\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."StrappedTemplates" or (errorHandler.buildDepError "StrappedTemplates"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            ];
          buildable = true;
          };
        };
      };
    }