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
    flags = { small_base = true; debug = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Hipmunk"; version = "5.2.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008-2010 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "http://patch-tag.com/r/felipe/hipmunk/home";
      url = "";
      synopsis = "A Haskell binding for Chipmunk.";
      description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://code.google.com/p/chipmunk-physics/> and\n<http://wiki.slembcke.net/main/published/Chipmunk>).  This\npackage contains a prerelease Chipmunk 5.0 source and\nHaskell bindings to all of its functions. It is\ncompletely self-contained.  Please see\n<http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nNew in version 5.2.0.2:\n\n* Update to Chipmunk 5.3.4.  Note, however, that not all\nfunctionality available in Chipmunk 5.3.4 is here yet.  But\nthe bug fixes and performance improvements are.\n\n* Fix linking bug present since Hipmunk 5.1.0.  Thanks, Sönke Hahn.\n\n* Correctly destroy the space in the presence of callbacks.\n\n* Workaround difficult-to-reproduce bug in Chipmunk where the\nnumber of contact points in an arbiter would get garbage.\nWhen that happens (and the garbage does look like garbage) we\ngive an empty list of contact points.\n\nLicensed under the MIT license (like Chipmunk itself).";
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