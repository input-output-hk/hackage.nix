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
      specVersion = "1.6";
      identifier = { name = "cblrepo"; version = "0.18.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2011 Magnus Therning";
      maintainer = "Magnus Therning <magnus@therning.org>";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Tool to maintain a database of CABAL packages and their dependencies";
      description = "Helper tool for people maintaining a set of CABAL packages for their\ndistribution. It maintains a database of packages and verifies dependencies\nof the entire set as packages are added or updated. It also makes it trivial\nto track packages as new versions are released on Hackage.\nIt can also be used to build source packages for the Arch Linux\ndistribution.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "cblrepo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }