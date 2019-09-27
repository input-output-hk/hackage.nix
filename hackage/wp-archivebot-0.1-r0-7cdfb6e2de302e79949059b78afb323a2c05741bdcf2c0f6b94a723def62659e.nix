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
      specVersion = "1.2";
      identifier = { name = "wp-archivebot"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gwern0@gmail.com";
      author = "Gwern";
      homepage = "";
      url = "";
      synopsis = "Subscribe to a wiki's RSS feed and archive external links";
      description = "A MediaWiki's RecentChanges or NewPages links to every new edit or article; this bot will\npoll the corresponding RSS feeds (easier and more reliable than parsing the HTML), follow\nthe links to the new edit/article, and then use TagSoup to filter out every off-wiki link\n(eg. to http://cnn.com).\n\nWith this list of external links, the bot will then fire off requests to http://webcitation.org/,\nwhich will make a backup (similar to the Internet Archive, but on-demand).\n\nExample: to archive links from every article in the English Wikipedia's RecentChanges:\n\n> wp-archivebot gwern0@gmail.com 'http://en.wikipedia.org/w/index.php?title=Special:RecentChanges&feed=rss'\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wp-archivebot" = {
          depends = [
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          buildable = true;
          };
        };
      };
    }