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
      specVersion = "1.10";
      identifier = { name = "zip2tar"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/zip2tar";
      url = "";
      synopsis = "Convert ZIP to TAR archives";
      description = "Convert ZIP to TAR archives with minimal memory footprint.\n\nUsage:\n\n> zip2tar input.zip >output.tar\n\n> zip2tar input.zip | lzip >output.tar.lz\n\nZIP archives cannot be read in a purely sequential way,\nbecause the central file catalogue is stored at the end of the archive file.\nThus we do not provide reading ZIP archives from Stdin.\n\nPer default @zip2tar@ stores files in the TAR archive\nin the same order as the ZIP archive in order to minimize seeking.\nHowever this means unsorted filenames.\nYou can order with respect to filenames with the @--sort-by-name@ option.\n\nPer default @zip2tar@ sets user and group\nids to zero and names to empty strings,\nbecause we do not know what is available on the system\nwhere the TAR archive gets unpacked.\nYou may set those values individually like in:\n\n> zip2tar --user-name janedoe --user-id 42 --group-name users --group-id 23 input.zip\n\n@zip2tar@ does not try to derive id from name or vice versa.\nIf you want certain values you must set them explicitly.\nYou may want to set the values to the settings of the current system like so:\n\n> zip2tar --user-name $USER --user-id $UID --group-name $(id -gn) --group-id $(id -g) input.zip";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zip2tar" = {
          depends = [
            (hsPkgs."zip" or (errorHandler.buildDepError "zip"))
            (hsPkgs."tar-conduit" or (errorHandler.buildDepError "tar-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }