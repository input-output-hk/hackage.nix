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
        name = "binary-file";
        version = "0.15.13";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://skami.iocikun.jp/haskell/packages/binary-file";
      url = "";
      synopsis = "read/write binary file";
      description = "See example directory's sample code.\n\n> runghc -XQuasiQuotes -XTypeFamilies -XFlexibleInstances exam.hs some.bmp\n\nexam.hs:\n\n> import File.Binary\n> import File.Binary.Instances\n> import File.Binary.Instances.LittleEndian\n> import System.Environment\n> import Data.ByteString.Lazy as BSL\n>\n> main = do\n>\t[inf] <- getArgs\n>   cnt <- BS.readFile inf\n>\tlet Right (bmp, rest) = fromBinary () cnt :: (Bitmap, String)\n>\tprint bmp\n>\n> instance Field (Int, Int, Int) where\n>    type FieldArgument (Int, Int, Int) = ()\n>    fromBinary _ s = let\n>        (b, rest) = toType 1 s\n>        (g, rest') = toType 1 rest\n>        (r, rest'') = toType 1 rest' in\n>        ((b, g, r), snd \$ getBytes 1 1 rest'')\n>    toBinary _ (b, g, r) = concatBinary [\n>        fromType 1 b, fromType 1 g, fromType 1 r,\n>        makeBinary \$ BSL.singleton 0]\n>\n> [binary|\n>\n> Bitmap\n>\n> deriving Show\n>\n> 2: \"BM\"\n> 4: file_size\n> 2: 0\n> 2: 0\n> 4: offset\n>\n> 4: 40\n> 4: width\n> 4: height\n> 2: 1\n> 2: bits_per_pixel\n> 4: compression\n> 4: image_size\n> 4: resolutionH\n> 4: resolutionV\n> 4: color_num\n> 4: important_color_num\n> ((), Just color_num)[OPENBRACKET](Int, Int, Int)[CLOSEBRACKET]: colors\n> ((), image_size)[OPENBRACKET]String[CLOSEBRACKET]: image\n>\n> |]\n";
      buildType = "Simple";
    };
    components = {
      "binary-file" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.peggy)
          (hsPkgs.bytestring)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }