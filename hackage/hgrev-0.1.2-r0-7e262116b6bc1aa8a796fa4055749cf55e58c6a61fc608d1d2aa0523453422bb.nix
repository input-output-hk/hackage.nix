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
      specVersion = "1.10";
      identifier = { name = "hgrev"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/hgrev";
      url = "";
      synopsis = "Compile Mercurial (hg) version info into Haskell code";
      description = "== __Overview__\n\n`hgrev` provides two modules:\n- `Development.HgRev` - <https://mercurial.selenic.com Mercurial (hg)> Haskell API\n- `Development.HgRev.TH` - Template Haskell splice to compile version info into Haskell code\n\nUse @$(hgRevStateTH defFormat)@ with Template Haskell enabled to insert the\nformatted version string.\n\n== __Requirements__\n\n`hgrev` requires the `hg` binary is installed and available on the system.\n`Development.HgRev.HgRev` and `Development.HgRev.HgState` are obtained via two\nseparate calls to `hg` because working directory state isn't available programmatically.\n\n== __Usage Example__\n\n> {-# LANGUAGE OverloadedStrings #-}\n> {-# LANGUAGE TemplateHaskell   #-}\n>\n> module Example where\n>\n> import           Data.Monoid          ((<>))\n> import           Data.Text            (Text, pack)\n> import           Development.HgRev.TH (defFormat, hgRevStateTH, jsonFormat)\n> import           Options.Applicative  (Parser, ParserInfo, execParser, fullDesc,\n>                                        help, helper, info, infoOption, long,\n>                                        progDesc, short)\n>\n> main :: IO ()\n> main = execParser parserInfo >> return ()\n>\n> verSwitch :: Parser (a -> a)\n> verSwitch =\n>     infoOption (\"HG rev: \" <> $(hgRevStateTH defFormat))\n>     $  long \"version\"\n>     <> short 'v'\n>     <> help \"Display version information\"\n>\n> jsonSwitch :: Parser (a -> a)\n> jsonSwitch =\n>     infoOption $(hgRevStateTH jsonFormat)\n>     $  long \"json\"\n>     <> short 'J'\n>     <> help \"Display JSON version information\"\n>\n> parserInfo :: ParserInfo (a -> a)\n> parserInfo = info (helper <*> verSwitch <* jsonSwitch) fullDesc\n>\n\nCheck out the <https://hackage.haskell.org/package/gitrev gitrev> package for similar git functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }