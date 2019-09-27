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
      specVersion = "0";
      identifier = { name = "datapacker"; version = "1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/datapacker";
      url = "";
      synopsis = "Tool to help pack files into the minimum number of CDs/DVDs/etc";
      description = "datapacker is a tool to group files by size. It is\ndesigned to group files such that they fill fixed-size containers\n(called \"bins\") using the minimum number of containers. This is\nuseful, for instance, if you want to archive a number of files to CD\nor DVD, and want to organize them such that you use the minimum\npossible number of CDs or DVDs.\n\nIn many cases, datapacker executes almost instantaneously. Of\nparticular note, the hardlink action can be used\nto effectively copy data into bins without having to actually copy\nthe data at all.\n\ndatapacker is a tool in the traditional Unix style; it can be used in\npipes and call other tools.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "datapacker" = {
          depends = [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }