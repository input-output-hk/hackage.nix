{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "sasl";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/sasl/wiki";
      url = "";
      synopsis = "SASL implementation using simple-pipe";
      description = "Example programs\n\nSCRAM-SHA-1 Client sample\n\nscramSha1sv.txt\n\n> r=00DEADBEEF007658cddf-0e44-4de2-87df-4132bce97f4,s=cGVwcGVy,i=4492\n> v=q0+IZgUtQTHYItaurlNyET1imLI=\n> success\n\nexamples/clientS.hs\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\n> import \"monads-tf\" Control.Monad.State\n> import Data.Pipe\n> import Data.Pipe.ByteString\n> import System.IO\n> import Network.Sasl\n> import Network.Sasl.ScramSha1.Client\n>\n> import qualified Data.ByteString as BS\n>\n> data St = St [(BS.ByteString, BS.ByteString)] deriving Show\n>\n> instance SaslState St where\n> \tgetSaslState (St s) = s\n> \tputSaslState s _ = St s\n>\n> serverFile :: String\n> serverFile = \"examples/scramSha1sv.txt\"\n>\n> main :: IO ()\n> main = do\n> \tlet\t(_, (_, p)) = sasl\n> \tr <- runPipe (fromFileLn serverFile =\$= input =\$= p =\$= toHandleLn stdout)\n> \t\t`runStateT` St [\n> \t\t\t(\"username\", \"yoshikuni\"),\n> \t\t\t(\"password\", \"password\"),\n> \t\t\t(\"cnonce\", \"00DEADBEEF00\") ]\n> \tprint r\n>\n> input :: Pipe BS.ByteString (Either Success BS.ByteString) (StateT St IO) ()\n> input = await >>= \\mbs -> case mbs of\n> \tJust \"success\" -> yield . Left \$ Success Nothing\n> \tJust ch -> yield (Right ch) >> input\n> \t_ -> return ()\n\nSCRAM-SHA-1 Server sample\n\nscramSha1cl.txt\n\n> n,,n=yoshikuni,r=00DEADBEEF00\n> c=biws,r=00DEADBEEF007658cddf-0e44-4de2-87df-4132bce97f4,p=zup7ghwpAW43cP4Xu3YZTNnHo0g=\n>\n\nexamples/serverS.hs\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\n> import \"monads-tf\" Control.Monad.State\n> import Data.Pipe\n> import Data.Pipe.ByteString\n> import System.IO\n> import Network.Sasl\n> import Network.Sasl.ScramSha1.Server\n>\n> import qualified Data.ByteString as BS\n>\n> data St = St [(BS.ByteString, BS.ByteString)] deriving Show\n>\n> instance SaslState St where\n> \tgetSaslState (St s) = s\n> \tputSaslState s _ = St s\n>\n> clientFile :: String\n> clientFile = \"examples/scramSha1cl.txt\"\n>\n> main :: IO ()\n> main = do\n> \tlet\tslt = \"pepper\"\n> \t\ti = 4492\n> \t\t(stk, svk) = salt \"password\" slt i\n> \t\t(_, (_, p)) = sasl \$ \\\"yoshikuni\" -> return (slt, stk, svk, i)\n> \tr <- runPipe (fromFileLn clientFile =\$= p =\$= output =\$= toHandleLn stdout)\n> \t\t`runStateT` St [(\"snonce\", \"7658cddf-0e44-4de2-87df-4132bce97f4\")]\n> \tprint r\n>\n> output :: Pipe (Either Success BS.ByteString) BS.ByteString (StateT St IO) ()\n> output = await >>= \\mch -> case mch of\n> \tJust (Left (Success Nothing)) -> yield \"success\"\n> \tJust (Left (Success (Just bs))) -> yield bs\n> \tJust (Right bs) -> yield bs >> output\n> \t_ -> return ()\n\nSee examples directory for more examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.simple-pipe)
          (hsPkgs.papillon)
          (hsPkgs.cryptohash)
          (hsPkgs.base64-bytestring)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }