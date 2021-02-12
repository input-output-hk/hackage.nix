{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "superdoc"; version = "0.1.2.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2018 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/superdoc/";
      url = "";
      synopsis = "Additional documentation markup and Unicode support";
      description = "This package extends Cabal's documentation building capabilities.\nIt extends the Haddock markup language with syntax for subscripts,\nsuperscripts, bold text, non-breaking spaces, and images. Moreover,\nit works around various bugs in Haddock's and HsColour's Unicode\nsupport, making it possible to use UTF8 encodings in both source\ncode and documentation comments.\n\nThis package is designed to work transparently. It provides a custom\nmain function that package maintainers can use in their Setup.hs\nfile. In most cases, this is as simple as setting the build-type to\nCustom, adding superdoc to the package dependencies, and putting the\nfollowing two lines into Setup.hs:\n\n> import Distribution.Superdoc\n> main = superdocMain\n\nFor more information on the available markup, see \"Distribution.Superdoc\".";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.setupDepError "containers")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "superdoc-armor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."superdoc" or (errorHandler.buildDepError "superdoc"))
            ];
          buildable = true;
          };
        };
      };
    }