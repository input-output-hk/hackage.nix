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
      identifier = { name = "hothasktags"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Palmer <lrpalmer@gmail.com>";
      author = "Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://github.com/luqui/hothasktags";
      url = "";
      synopsis = "Generates ctags for Haskell, incorporating import lists and qualified imports";
      description = "hothasktags generates ctags files for Haskell, with knowledge of import lists\nand qualified imports.  It provides a smart go-to-definition for vim, that almost\nalways gets it right in the presence of multiple names from different modules.\nYou will want to configure vim to allow dots in keywords, because hothasktags\ngenerates tags for qualified names.  You can do this with:\nset iskeyword=a-z,A-Z,_,.,39\n(The 39 is for the prime character)\nUsage is easy, just give hothasktags the names of all the haskell sources you\nwant to index and redirect into a tags file.  For example:\nfind . | egrep '\\.hs$' | xargs hothasktags > tags\nwill index all the hs files under the current directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hothasktags" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }