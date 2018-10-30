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
      specVersion = "1.10";
      identifier = {
        name = "google-drive";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Google Drive API access";
      description = "Interacting with the Google Drive API\n\nExample usage:\n\n> import Control.Monad (void)\n> import Data.Conduit ((\$\$+-))\n>\n> import Network.Google.Drive\n>\n> main :: IO ()\n> main = void \$ runApi token \$ do\n>     root <- getFile \"root\"\n>     items <- listFiles \$ ParentEq (fileId root) `And` Untrashed\n>\n>     mapM_ download items\n>\n>   where\n>     download :: File -> Api ()\n>     download file = do\n>         let fd = fileData file\n>\n>         case fileDownloadUrl \$ fd of\n>             Nothing -> return ()\n>             Just url -> getSource (T.unpack url) [] \$ \\source ->\n>                 source \$\$+- sinkFile (fileTitle fd)\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.google-drive)
            (hsPkgs.google-oauth2)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.load-env)
            (hsPkgs.text)
          ];
        };
      };
    };
  }