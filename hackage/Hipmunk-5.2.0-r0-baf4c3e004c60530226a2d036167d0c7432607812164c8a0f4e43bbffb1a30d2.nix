{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Hipmunk"; version = "5.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008-2010 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding for Chipmunk.";
      description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://code.google.com/p/chipmunk-physics/> and\n<http://wiki.slembcke.net/main/published/Chipmunk>).  This\npackage contains a prerelease Chipmunk 5.0 source and\nHaskell bindings to all of its functions. It is\ncompletely self-contained.  Please see\n<http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nNew in version 5.2.0:\n\n* Use package StateVar for all variables.\n\n* Do not use Chipmunk's debug mode.\n\nNew in version 5.1.0:\n\n* Updated to Chipmunk 5.0 revision 402.\n'setElasticIterations' is now deprecated.\n\n* New, revamped callback system.  See module\n\"Physics.Hipmunk.Callbacks\".\n\n* Support for the new ratchet joint.  Thanks, Owen\nAnderson.\n\n* Support for limits on linear and angular velocities.\n\n* @shapePointQuery@ and @shapeSegmentQuery@ don't filter\ngroups and layers anymore.\n\nLicensed under the MIT license (like Chipmunk itself).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.StateVar)
            ]
          else [ (hsPkgs.base) (hsPkgs.transformers) (hsPkgs.StateVar) ];
        libs = [ (pkgs."m") ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }