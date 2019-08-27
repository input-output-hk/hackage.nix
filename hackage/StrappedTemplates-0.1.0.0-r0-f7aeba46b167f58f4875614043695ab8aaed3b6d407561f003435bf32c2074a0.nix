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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."StrappedTemplates" or (buildDepError "StrappedTemplates"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            ];
          };
        };
      };
    }