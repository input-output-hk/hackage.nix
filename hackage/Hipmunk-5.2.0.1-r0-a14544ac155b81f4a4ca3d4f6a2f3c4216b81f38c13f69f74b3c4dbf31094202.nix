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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Hipmunk"; version = "5.2.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008-2010 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding for Chipmunk.";
      description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://code.google.com/p/chipmunk-physics/> and\n<http://wiki.slembcke.net/main/published/Chipmunk>).  This\npackage contains a prerelease Chipmunk 5.0 source and\nHaskell bindings to all of its functions. It is\ncompletely self-contained.  Please see\n<http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nNew in version 5.2.0.1:\n\n* Minor documentation fixes.\n\nNew in version 5.2.0:\n\n* Use package StateVar for all variables.\n\n* Do not use Chipmunk's debug mode.\n\nNew in version 5.1.0:\n\n* Updated to Chipmunk 5.0 revision 402.\n'setElasticIterations' is now deprecated.\n\n* New, revamped callback system.  See module\n\"Physics.Hipmunk.Callbacks\".\n\n* Support for the new ratchet joint.  Thanks, Owen\nAnderson.\n\n* Support for limits on linear and angular velocities.\n\n* @shapePointQuery@ and @shapeSegmentQuery@ don't filter\ngroups and layers anymore.\n\nLicensed under the MIT license (like Chipmunk itself).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          ];
        libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }