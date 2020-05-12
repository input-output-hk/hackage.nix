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
      identifier = { name = "hothasktags"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Palmer <lrpalmer@gmail.com>";
      author = "Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://github.com/luqui/hothasktags";
      url = "";
      synopsis = "Generates ctags for Haskell, incorporating import lists and qualified imports";
      description = "hothasktags generates ctags files for Haskell, with knowledge of import lists\nand qualified imports.  It provides a smart go-to-definition for Vim, that almost\nalways gets it right in the presence of multiple names from different modules.\n\nYou will want to configure Vim to allow dots in keywords, because hothasktags\ngenerates tags for qualified names.  You can do this with:\n\n> set iskeyword=a-z,A-Z,_,.,39\n\n(The 39 is for the prime character)\n\nUsage is easy, just give hothasktags the names of all the haskell sources you\nwant to index and redirect into a tags file.  For example:\n\n> find . | egrep '\\.hs\$' | xargs hothasktags > tags\n\nwill index all the hs files under the current directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hothasktags" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }