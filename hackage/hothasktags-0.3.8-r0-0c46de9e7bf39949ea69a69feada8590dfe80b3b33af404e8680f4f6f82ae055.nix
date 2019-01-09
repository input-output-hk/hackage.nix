{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hothasktags"; version = "0.3.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Palmer <lrpalmer@gmail.com>";
      author = "Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://github.com/luqui/hothasktags";
      url = "";
      synopsis = "Generates ctags for Haskell, incorporating import lists and qualified imports";
      description = "hothasktags generates ctags files for Haskell, with knowledge of import lists\nand qualified imports.  It provides a smart go-to-definition for Vim, that almost\nalways gets it right in the presence of multiple names from different modules.\n\nYou will want to configure Vim to allow dots in keywords, because hothasktags\ngenerates tags for qualified names.  You can do this with:\n\n> set iskeyword=a-z,A-Z,_,.,39\n\n(The 39 is for the prime character)\n\nUsage is easy, just give hothasktags the names of all the haskell sources you\nwant to index and redirect into a tags file.  For example:\n\n> find . -name '*.hs' | xargs hothasktags > tags\n\nwill index all the hs files under the current directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hothasktags" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.Glob)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.cpphs)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
            ];
          };
        };
      };
    }