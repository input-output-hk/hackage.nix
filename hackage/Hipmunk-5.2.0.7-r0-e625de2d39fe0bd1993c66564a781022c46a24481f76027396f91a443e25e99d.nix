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
    flags = { small_base = true; debug = false; system-chipmunk = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Hipmunk"; version = "5.2.0.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008-2011 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>, Sönke Hahn <shahn@joyridelabs.de>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "http://patch-tag.com/r/felipe/hipmunk/home";
      url = "";
      synopsis = "A Haskell binding for Chipmunk.";
      description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://code.google.com/p/chipmunk-physics/>).  This\npackage the Chipmunk 5.3.4 source and Haskell bindings to\nall of its functions. It is completely self-contained.\nPlease see <http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nNew in version 5.2.0.6:\n\n* Fixed a memory leak related to collision handlers.\n\nNew in version 5.2.0.5:\n\n* Always compile @wrapper.c@ and fix Haddock errors\nwhile handling Unicode.  Thanks, Joachim Breitner.\n\nNew in version 5.2.0.4:\n\n* New system-chipmunk flag.  When activated, the package will\nuse the system-wide installed Chipmunk library.  Thanks,\nJoachim Breitner.\n\nNew in version 5.2.0.3:\n\n* Update to Chipmunk 5.3.5 and bump dependencies to\nmatch GHC 7.2.1. (Thanks, S&#246;nke Hahn!)\n\n* Now S&#246;nke Hahn is also a Hipmunk maintainer.  Awesome!\n\nNew in version 5.2.0.2:\n\n* Update to Chipmunk 5.3.4.  Note, however, that not all\nfunctionality available in Chipmunk 5.3.4 is here yet.  But\nthe bug fixes and performance improvements are.\n\n* Fix linking bug present since Hipmunk 5.1.0.  Thanks, S&#246;nke Hahn.\n\n* Correctly destroy the space in the presence of callbacks.\n\n* Workaround difficult-to-reproduce bug in Chipmunk where the\nnumber of contact points in an arbiter would get garbage.\nWhen that happens (and the garbage does look like garbage) we\ngive an empty list of contact points.\n\nLicensed under the MIT license (like Chipmunk itself).";
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
        libs = [
          (pkgs."m" or (sysDepError "m"))
          ] ++ (pkgs.lib).optional (flags.system-chipmunk) (pkgs."chipmunk" or (sysDepError "chipmunk"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      };
    }