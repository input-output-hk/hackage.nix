{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "StrappedTemplates";
        version = "0.1.0.0";
      };
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
      "StrappedTemplates" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.filemanip)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.StrappedTemplates)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
          ];
        };
      };
    };
  }