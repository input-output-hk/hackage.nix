{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "image-type";
          version = "0.1.0.0";
        };
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
        image-type = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }