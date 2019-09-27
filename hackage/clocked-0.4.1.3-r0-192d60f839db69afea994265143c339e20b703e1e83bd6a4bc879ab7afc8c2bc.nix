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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "clocked"; version = "0.4.1.3"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "shahn@joyridelabs.de";
      author = "Sönke Hahn";
      homepage = "http://patch-tag.com/r/shahn/clocked/home";
      url = "";
      synopsis = "timer functionality to clock IO commands";
      description = "clocked is a library that allows you to clock IO-operations. You can use it to clock the rendering of frames, the calculation of steps in a physics engine, the triggering of musical events in a real-time system, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ] ++ (pkgs.lib).optional (!system.isOsx) (hsPkgs."clock" or (buildDepError "clock"))) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."time" or (buildDepError "time"));
        libs = [
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ] ++ (pkgs.lib).optional (system.isWindows) (pkgs."QtCore4" or (sysDepError "QtCore4"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."QtCore" or (sysDepError "QtCore"));
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."QtCore" or (pkgConfDepError "QtCore"));
        buildable = true;
        };
      };
    }