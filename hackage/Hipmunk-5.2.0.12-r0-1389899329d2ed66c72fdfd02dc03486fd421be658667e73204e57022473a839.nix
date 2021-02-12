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
    flags = { small_base = true; debug = false; system-chipmunk = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Hipmunk"; version = "5.2.0.12"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008-2011 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>, Sönke Hahn <shahn@joyridelabs.de>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/meteficha/Hipmunk";
      url = "";
      synopsis = "A Haskell binding for Chipmunk.";
      description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://code.google.com/p/chipmunk-physics/>).  This\npackage the Chipmunk 5.3.4 source and Haskell bindings to\nall of its functions. It is completely self-contained.\nPlease see <http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nVersion 5.2.0.11:\n\n* Compatibility with base == 4.6.* (Thanks, Zack Corr!)\n\nVersion 5.2.0.10:\n\n* Compatibility with base < 4.4\n\nNew in version 5.2.0.9:\n\n* Added Physics.Hipmunk.Constraint.setMaxBias and setMaxForce.\nThanks to Stephen Paul Weber.\n\nNew in version 5.2.0.6:\n\n* Fixed a memory leak related to collision handlers.\n\nNew in version 5.2.0.5:\n\n* Always compile @wrapper.c@ and fix Haddock errors\nwhile handling Unicode.  Thanks, Joachim Breitner.\n\nNew in version 5.2.0.4:\n\n* New system-chipmunk flag.  When activated, the package will\nuse the system-wide installed Chipmunk library.  Thanks,\nJoachim Breitner.\n\nNew in version 5.2.0.3:\n\n* Update to Chipmunk 5.3.5 and bump dependencies to\nmatch GHC 7.2.1. (Thanks, S&#246;nke Hahn!)\n\n* Now S&#246;nke Hahn is also a Hipmunk maintainer.  Awesome!\n\nNew in version 5.2.0.2:\n\n* Update to Chipmunk 5.3.4.  Note, however, that not all\nfunctionality available in Chipmunk 5.3.4 is here yet.  But\nthe bug fixes and performance improvements are.\n\n* Fix linking bug present since Hipmunk 5.1.0.  Thanks, S&#246;nke Hahn.\n\n* Correctly destroy the space in the presence of callbacks.\n\n* Workaround difficult-to-reproduce bug in Chipmunk where the\nnumber of contact points in an arbiter would get garbage.\nWhen that happens (and the garbage does look like garbage) we\ngive an empty list of contact points.\n\nLicensed under the MIT license (like Chipmunk itself).";
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
        libs = [
          (pkgs."m" or (errorHandler.sysDepError "m"))
          ] ++ (pkgs.lib).optional (flags.system-chipmunk) (pkgs."chipmunk" or (errorHandler.sysDepError "chipmunk"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      };
    }