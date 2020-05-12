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
      specVersion = "1.8";
      identifier = { name = "hdf"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hdf";
      url = "";
      synopsis = "HDF: Uniform Rate Audio Signal Processing in Haskell";
      description = "Haskell data flow library for audio processing.\nRequires either the @RDL@ UGen from @sc3-rdu@ or\nthe @jack-dl@ host from @rju@.\n\nSee <http://rd.slavepianos.org/t/sc3-rdu>\nor <http://rd.slavepianos.org/t/rju>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."fgl-visualize" or (errorHandler.buildDepError "fgl-visualize"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }