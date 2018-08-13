{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "knob";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/knob/";
      url = "";
      synopsis = "Memory-backed handles";
      description = "Create memory-backed 'IO.Handle's, referencing virtual files. This is\nmostly useful for testing 'Handle'-based APIs without having to\ninteract with the filesystem.\n\n> import Data.ByteString (pack)\n> import Data.Knob\n> import System.IO\n>\n> main = do\n>     knob <- newKnob (pack [])\n>     h <- newFileHandle knob \"test.txt\" WriteMode\n>     hPutStrLn h \"Hello world!\"\n>     hClose h\n>     bytes <- Data.Knob.getContents knob\n>     putStrLn (\"Wrote bytes: \" ++ show bytes)";
      buildType = "Simple";
    };
    components = {
      "knob" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
        ];
      };
    };
  }