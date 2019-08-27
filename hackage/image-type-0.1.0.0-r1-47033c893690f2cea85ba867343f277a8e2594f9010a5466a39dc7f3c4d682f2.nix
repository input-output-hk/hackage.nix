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
      specVersion = "1.10";
      identifier = { name = "image-type"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldurpet@gmail.com";
      author = "Baldur BlÃ¶ndal";
      homepage = "https://github.com/Icelandjack/Image-type";
      url = "";
      synopsis = "Determine the type of an image by reading the first bytes.";
      description = "A package used to determine the type of an image according to its first bytes based on the Python library <https://docs.python.org/3/library/imghdr.html imghdr>.\n\nMost simplest usage is getting the type of a file:\n\n>>> import Codec.ImageType\n>>> getFileType \"/tmp/mystery_file\"\nJust \"webp\"\n\nOr to test for a specific extension:\n\n>>> isPgm \"/tmp/file.pgm\"\nTrue\n>>> import qualified Data.ByteString as B\n>>> testPgm <\$> B.readFile \"/tmp/file.pgm\"\nJust \"pgm\"\n\nOr to filter files by extension:\n\n>>> import Codec.ImageType\n>>> import Control.Monad\n>>> import System.Directory\n>>>\n>>> getDirectoryContents \".\" >>= filterM doesFileExist >>= filterM isJpeg\n[\"file2.jpeg\",\"file1.jpeg\"]\n\nSupports the following extensions: @JPEG@, @PNG@, @GIF@, @TIFF@, @RGB@, @PBM@, @PGM@, @PPM@, @RAST@, @XBM@, @BMP@, @WebP@, @EXR@.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      };
    }