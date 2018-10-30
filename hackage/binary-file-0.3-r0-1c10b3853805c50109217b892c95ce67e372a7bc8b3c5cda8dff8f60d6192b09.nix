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
        name = "binary-file";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "read/write binary file";
      description = "> runghc -XQuasiQuotes exam.hs some.bmp out.bmp\n\nexam.hs:\n\n> import Binary\n> import System.Environment\n>\n> main = do\n>\t[inf, outf] <- getArgs\n>\n>\tcnt <- readBinaryFile inf\n>\tlet bmp = readBitmap cnt\n>\tprint \$ readBitmap cnt\n>\n>\tlet out = writeBitmap bmp {\n>\t\tauthorFirst = \"Yoshikuni \",\n>\t\tauthorSecond = \"Jujo      \"\n>\t }\n>\twriteBinaryFile outf out\n>\n> [binary|\n>\n> Bitmap\n>\n> 2: \"BM\"\n> 4: fileSize\n> 2: 0\n> 2: 0\n> 4: offset\n> 4: 40\n> 4: bitmapWidth\n> 4: bitmapHeight\n> 2: 1\n> 2: bitsPerPixel\n> 4: compressionMethod\n> 4: imageSize\n> 4: horizontalResolution\n> 4: verticalResolution\n> 4: numberOfColors\n> 4: importantColors\n> 4[numberOfColors]: colors\n> bitsPerPixel/8[imageSize*8/bitsPerPixel]: image\n> 10<String>: authorFirst\n> 10<String>: authorSecond\n>\n> |]\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.peggy)
        ];
      };
    };
  }