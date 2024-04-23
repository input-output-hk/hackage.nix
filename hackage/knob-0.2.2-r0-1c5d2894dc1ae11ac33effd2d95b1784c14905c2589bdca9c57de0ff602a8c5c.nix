{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "knob"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Naïm Favier <n@monade.li>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://github.com/ncfavier/knob";
      url = "";
      synopsis = "Memory-backed handles";
      description = "Create memory-backed 'Handle's, referencing virtual files. This is\nmostly useful for testing 'Handle'-based APIs without having to\ninteract with the filesystem.\n\n> import Data.ByteString (pack)\n> import Data.Knob\n> import System.IO\n>\n> main = do\n>     knob <- newKnob (pack [])\n>     h <- newFileHandle knob \"test.txt\" WriteMode\n>     hPutStrLn h \"Hello world!\"\n>     hClose h\n>     bytes <- Data.Knob.getContents knob\n>     putStrLn (\"Wrote bytes: \" ++ show bytes)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }