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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "executable-path"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Finding out the full path of the executable.";
      description = "The documentation of \"System.Environment.getProgName\" says that\n\\\"However, this is hard-to-impossible to implement on some non-Unix OSes,\nso instead, for maximum portability, we just return the leafname\nof the program as invoked.\\\"\nThis library tries to provide the missing path.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ]) ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (system.isFreebsd) [
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ]) ++ (pkgs.lib).optionals (system.isOpenbsd || system.isNetbsd) [
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ]) ++ (pkgs.lib).optional (system.isSolaris) (hsPkgs."unix" or (buildDepError "unix"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"));
        buildable = true;
        };
      };
    }