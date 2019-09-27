let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lushtags"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "bit@mutantlemon.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/lushtags";
      url = "";
      synopsis = "Create ctags compatible tags files for Haskell programs";
      description = "> Create ctags compatible tags files for Haskell programs\n>\n> Similar programs are [hasktags][1], [gasbag][2], [hothasktags][3], and GHC's\n> builtin ctags generation.\n>\n> lushtags differs from these by being designed to have smooth integration with\n> the [Vim Tagbar][4] plugin.\n>\n> Tagbar is nice because it deals with creating tags automatically. There is no\n> need to manually run commands or keep track of tag files. Just open any Haskell\n> file in Vim and the Tagbar window will instantly show an interactive browsable\n> list of all the functions and declarations in the file. This window also\n> updates automatically as you edit the file.\n>\n> The tags created by lushtags are marked with several extensions, so that when\n> used with Tagbar you get these features:\n>\n> - Type signatures are displayed for functions.\n> - Tags are properly scoped so that, for example, data declarations appear as a\n>   tree with their constructors scoped as children.\n> - Definitions that are exported from the module are marked as \"public\" and\n>   appear emphasized in Tagbar.\n> - Tag locations are internally stored as patterns, not line numbers, so that\n>   you can correctly jump to tags even if they have moved in the source code\n>   during editing.\n>\n> ![screenshot](https://github.com/bitc/lushtags/raw/master/doc/screenshot-tagbar-2011-09-19.png)\n>\n> [1]: http://hackage.haskell.org/package/hasktags\n> [2]: http://kingfisher.nfshost.com/sw/gasbag/\n> [3]: http://hackage.haskell.org/package/hothasktags\n> [4]: http://majutsushi.github.com/tagbar/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lushtags" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }