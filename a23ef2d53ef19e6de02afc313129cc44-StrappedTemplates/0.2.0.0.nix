{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "StrappedTemplates";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@khanson.io";
        author = "Kyle Hanson";
        homepage = "https://github.com/hansonkd/StrappedTemplates";
        url = "";
        synopsis = "General purpose templates in haskell";
        description = "Easy templating in haskell.\n\n>  import Control.Monad.IO.Class\n>  import qualified Blaze.ByteString.Builder as B\n>  import qualified Data.Text as T\n>  import Data.Time\n>\n>  import Text.Strapped\n>\n>  makeBucket :: Integer -> InputBucket IO\n>  makeBucket i = bucketFromList\n>        [ (\"is\", lit \$ map (LitInteger) [1..i])\n>        , (\"is_truthy\", lit i)\n>        , (\"ioTime\", Func (\\_ -> (liftIO \$ getCurrentTime) >>= (\\c -> return \$ LitText \$ T.pack \$ show c)))\n>        ]\n>\n>  main :: IO ()\n>  main = do\n>    tmpls <- templateStoreFromDirectory defaultConfig \"examples/templates\" \".strp\"\n>    case tmpls of\n>      Left err -> print err\n>      Right store -> do\n>        rendered <- render (putStore store defaultConfig) (makeBucket 2) \"base_simple.strp\"\n>        either (print) (print . B.toByteString) rendered\n\n@\n&#160;&#x7b;\$ inherits base.strp \$&#x7d;\n&#160;\n&#160;&#x7b;\$ isblock body \$&#x7d;\n&#160;\n&#160;An IO function to find the current time: \$&#x7b; ioTime &#x7d;\n&#160;\n&#160;&#x7b;\$ if is_truthy \$&#x7d;\n&#160;    &#x7b;\$ inherits base.strp \$&#x7d;\n&#160;    &#x7b;\$ isblock body \$&#x7d;\n&#160;        Any block level can inherit from another template and override blocks.\n&#160;    &#x7b;\$ endisblock \$&#x7d;\n&#160;&#x7b;\$ else \$&#x7d;\n&#160;    Don't show me.\n&#160;&#x7b;\$ endif \$&#x7d;\n&#160;\n&#160;Taken from an includes:\n&#160;&#x7b;\$ include includes/includes.strp \$&#x7d;\n&#160;\n&#160;Lets count...\n&#160;&#x7b;\$ for i in is \$&#x7d;\n&#160;    \$&#x7b; i &#x7d;\n&#160;&#x7b;\$ endfor \$&#x7d;\n&#160;\n&#160;&#x7b;\$ endisblock \$&#x7d;\n@";
        buildType = "Simple";
      };
      components = {
        "StrappedTemplates" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.filemanip
            hsPkgs.filepath
          ];
        };
        tests = {
          "Main" = {
            depends  = [
              hsPkgs.StrappedTemplates
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.blaze-builder
            ];
          };
        };
      };
    }