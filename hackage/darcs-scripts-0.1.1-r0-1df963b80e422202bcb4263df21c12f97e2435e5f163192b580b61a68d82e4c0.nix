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
      identifier = { name = "darcs-scripts"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darcs@henning-thielemann.de";
      author = "Henning Thielemann <darcs@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Shell scripts for support of darcs workflow";
      description = "This is a collection of Bash shell scripts\nfor support of development using the revision control system Darcs.\nThe scripts are installed in your @cabal/share@ directory,\nthus you may extend your command search path accordingly.\n\nWithin a Darcs working copy you may run:\n\n* @editor \\`darcs-list-modified\\`@:\nOpen an editor with all files that are modified\nwith respect to the current local repository state.\n\n* @darcs-replace-rec OLD NEW dirOrFileA dirOrFileB@:\nReplace @OLD@ by @NEW@ in all files in @dirOrFileA@ and so on,\nthat contain @OLD@.\nThis calls @darcs replace@, that is,\nthe replacements are managed by Darcs as such.\n\n* @darcs-mv-hs src\\/Data\\/Special.hs src\\/Control\\/Extra.hs@:\nMove the file @src\\/Data\\/Special.hs@ to @src\\/Control\\/Extra.hs@\nand replace the according module name\n@Data.Special@ by @Control.Extra@\nin all modules in directory @src@ and in the cabal file.\nThe first component must be a directory for source files.\nIf you do not have a source directory, you may use @.@,\nbut then files in @_darcs@ are also addressed,\nand Darcs will warn you.\nNested source directories are not supported.\n\n* @darcs-hub-put pkgname@:\nCreate new darcs repository at hub.darcs.net\nwith the Cabal Synopsis as repository summary.\nThe push patches to the newly created repository.\n@pkgname@ is the name of the remote repository.\nA common way to run the script is @darcs-hub-put \\`basename \$PWD\\`@.\n\n* @darcs-conv-latin-to-utf8 dirOrFile ...@:\nConvert all files from Latin encoding to UTF8 encoding.\nYou may easily adapt the script in order\nto convert between other encodings.\nInstead of using non-ASCII encodings\nyou may replace non-ASCII symbols by Haskell string escape codes.\n\n* @darcs-replace-finitemap@:\nConvert old programs from use of @FiniteMap@ to @containers:Data.Map@.\n\n* @darcs-mv-m3@ and @darcs-mv-mg@ are for Modula-3 development.\nThey rename both interface and implementation file of a module\nand replace module names accordingly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }