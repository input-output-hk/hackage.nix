{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hothasktags"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Palmer <lrpalmer@gmail.com>";
      author = "Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://github.com/luqui/hothasktags";
      url = "";
      synopsis = "Generates ctags for Haskell, incorporating import lists and qualified imports";
      description = "hothasktags generates ctags files for Haskell, with knowledge of import lists\nand qualified imports.  It provides a smart go-to-definition for Vim, that almost\nalways gets it right in the presence of multiple names from different modules.\n\nYou will want to configure Vim to allow dots in keywords, because hothasktags\ngenerates tags for qualified names.  You can do this with:\n\n> set iskeyword=a-z,A-Z,_,.,39\n\n(The 39 is for the prime character)\n\nUsage is easy, just give hothasktags the names of all the haskell sources you\nwant to index and redirect into a tags file.  For example:\n\n> find . | egrep '\\.hs\$' | xargs hothasktags > tags\n\nwill index all the hs files under the current directory.\n\nhothasktags does not work with the emacs tag file format.  Sorry.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hothasktags" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }