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
    flags = { nano-md5 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "feed2lj"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/feed2ljhs/";
      url = "";
      synopsis = "Cross-post any RSS/Atom feed to LiveJournal";
      description = "A script to cross-post any RSS/Atom Feed to LiveJournal.\n\nAll HTML tags are merely stripped from the original.\nImages are replaced with their ALT attributes.\n\nCONFIGURATION\n\nCreate a file named `~/.ljpass` with your LJ login\n(`username`) and `password`. GUIDs of the processed\nmessage are saved to the file defined by `sentfile`.\nAdditionally, define an HTML `template` of the cross-posted\nmessages as they should appear in LJ.\nOption `nsentences`, if defined, specifies how many\nsentences of the original message are to be cross-posted.\n\nFor example:\n\n> username=myljlogin\n> password=myljpassword\n> sentfile=/path/to/file/where/crossposted/GUIDs/are/saved\n> template=<p>%text%</p><p>( <a href=\"%link%\" title=\"%title%\">more</a> )</p>\n> nsentences=5\n\nUSAGE\n\n> \$ feed2lj [--help] [--dry-run] http://example.com/rss.xml\n\nUse `--dry-run` option to preview results without actually\nposting to LJ.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "feed2lj" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."curl" or (buildDepError "curl"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            ] ++ (if flags.nano-md5
            then [ (hsPkgs."nano-md5" or (buildDepError "nano-md5")) ]
            else [ (hsPkgs."pureMD5" or (buildDepError "pureMD5")) ]);
          };
        };
      };
    }