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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            ];
        libs = [ (pkgs."m" or (sysDepError "m")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      };
    }