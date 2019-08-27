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
      identifier = { name = "file-command-qq"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/file-command-qq";
      url = "";
      synopsis = "Quasiquoter for system commands involving filepaths";
      description = "file-command-qq is a simple quasiquoter for running system commands that take a filepath as an argument.\n\nFor instance\n\n>> :set -XOverloadedStrings\n>> import FileCommand\n>> import Filesystem.Path\n>> [s|echo \$filename|] \"/home/test/thing.txt\"\n\n\nwill return\n\n@\nthing.txt\nExitSuccess\n@\n\nYou can think of @[s|echo \$filename|]@ essentially converts into\n\n\n@\n\\\\path -> system \$ \"echo\" ++ encodeString (filename path)\n@\n\nHere is another example\n\n>> [s|gcc \$path -o \$directory\$basename.o|] \"/home/test/thing.c\"\n\nAll \\\"file parts\\\" start with a \\'\$\\'. The \\'\$\\' can be escaped by preceding it with a \\'\\\\\\'\n\nThere are the following options for \\\"file parts\\\"\n\n\n* \$path\n* \$root\n* \$directory\n* \$parent\n* \$filename\n* \$dirname\n* \$basename\n* \$ext\n\nWhich correspond to the respective functions in <https://hackage.haskell.org/package/system-filepath-0.4.6/docs/Filesystem-Path.html#g:1>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }