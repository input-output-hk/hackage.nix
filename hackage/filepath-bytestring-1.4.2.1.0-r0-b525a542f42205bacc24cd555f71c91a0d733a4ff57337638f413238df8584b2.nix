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
      specVersion = "1.18";
      identifier = { name = "filepath-bytestring"; version = "1.4.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2005-2019\nJoey Hess 2019";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library for manipulating RawFilePaths in a cross platform way.";
      description = "This package provides functionality for manipulating @RawFilePath@\nvalues. It can be used as a drop in replacement for the filepath library\nto get the benefits of using ByteStrings. It provides three modules:\n\n* \"System.FilePath.Posix.ByteString\" manipulates POSIX\\/Linux style @RawFilePath@ values (with @\\/@ as the path separator).\n\n* \"System.FilePath.Windows.ByteString\" manipulates Windows style @RawFilePath@ values (with either @\\\\@ or @\\/@ as the path separator, and deals with drives).\n\n* \"System.FilePath.ByteString\" is an alias for the module appropriate to your platform.\n\nAll three modules provide the same API, and the same documentation (calling out differences in the different variants).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        buildable = true;
        };
      tests = {
        "filepath-tests" = {
          depends = [
            (hsPkgs."filepath-bytestring" or (buildDepError "filepath-bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }