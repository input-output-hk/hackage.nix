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
      specVersion = "1.6";
      identifier = { name = "fast-tagsoup"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Vladimir Shabanov 2011-2012";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Vladimir Shabanov <vshabanoff@gmail.com>";
      homepage = "https://github.com/vshabanov/fast-tagsoup";
      url = "";
      synopsis = "Fast parser for tagsoup package";
      description = "\nFast TagSoup parser. Speeds of 20-200MB/sec were observed.\n\nWorks only with strict bytestrings.\n\nThis library is intended to be used in conjunction with the original @tagsoup@ package:\n\n> import Text.HTML.TagSoup hiding (parseTags, renderTags)\n> import Text.HTML.TagSoup.Fast\n\nBesides speed @fast-tagsoup@ correctly handles HTML @\\<script\\>@ and @\\<style\\>@ tags, converts tags to lower case and can decode non UTF-8 XML for you.\n\nThis parser is used in production in BazQux Reader feeds and comments crawler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }