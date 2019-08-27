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
      identifier = { name = "haskell-pdf-presenter"; version = "0.2.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012-2013, Michael D. Adams";
      maintainer = "Michael D. Adams <http://michaeldadams.org/>";
      author = "Michael D. Adams";
      homepage = "http://michaeldadams.org/projects/haskell-pdf-presenter/";
      url = "";
      synopsis = "Tool for presenting PDF-based presentations.";
      description = "The Haskell Pdf Presenter (\"hpdfp\") is a tool for presenting PDF-based\nslide shows.  It has many features and niceties that make delivering\na presentation easier.  For example, as a\npresenter, it is useful to see the next slide before it is shown to\nthe audience as well as how much allotted time remains.\n\nThere are a lot of features that may not be immediately obvious so\nplease be sure to look at the documentation.\nFor help with the command line, use the \"--help\" flag.\nFor help with the GUI, press the \"?\" key when the program is running.\nThe \"README\" contains a terse summary of all the features.\n\nFor more information and example uses, please visit the project home page.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpdfp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."poppler" or (buildDepError "poppler"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            ];
          };
        };
      };
    }