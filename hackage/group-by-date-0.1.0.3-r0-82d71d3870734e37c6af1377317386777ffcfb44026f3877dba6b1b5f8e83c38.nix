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
      specVersion = "1.6";
      identifier = { name = "group-by-date"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/group-by-date/";
      url = "";
      synopsis = "Shell command for grouping files by dates into folders";
      description = "This program is intended for grouping photography images by date\ninto a hierarchy of date related folders.\n\nIf you have a folder of photographies, say @photos@,\nyou may run\n\n> group-by-date -r photos\n\nThe program will emit a Bash script like this one:\n\n> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0001.jpeg 2017/2017-06/2017-06-28\n> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0002.jpeg 2017/2017-06/2017-06-28\n> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0003.jpeg 2017/2017-06/2017-06-28\n\nYou can inspect the script and if you like it, you can run it:\n\n> group-by-date -r photos | bash\n\nIf you want a different command,\nsay copying with preservation of modification time, you can call\n\n> group-by-date --command='cp -p' -r photos\n\nAlternatively, you can run the actions immediately,\nthat is, without a Bash script:\n\n> group-by-date --mode=move -r photos\n> group-by-date --mode=copy -r photos\n\nYou can also change the target directory structure\nusing the @--format@ option.\nYou can list all options and default values using @--help@.\n\nAttention:\nMedia for photographies is often formatted with FAT.\nThis may yield trouble with respect to timezones.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "group-by-date" = {
          depends = [
            (hsPkgs."hsshellscript" or (buildDepError "hsshellscript"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }