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
      specVersion = "1.4";
      identifier = { name = "haste"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djsiegel@gmail.com";
      author = "David Siegel";
      homepage = "";
      url = "";
      synopsis = "A universal pastebin tool, written in Haskell.";
      description = "hpaste is a simple command line utility for piping text to online pastebin sites such as hpaste.org, paste2.org, pastebin.com and others. Text can be passed via STDIN, or by giving a file argument; text is pasted online, and the URL of the paste is printed to STDOUT. Use --help for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haste" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            ];
          buildable = true;
          };
        };
      };
    }