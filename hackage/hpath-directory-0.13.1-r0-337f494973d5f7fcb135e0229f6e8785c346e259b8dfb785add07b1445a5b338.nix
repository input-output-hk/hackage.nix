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
      specVersion = "1.10";
      identifier = { name = "hpath-directory"; version = "0.13.1"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald <hasufell@posteo.de> 2020";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "https://github.com/hasufell/hpath";
      url = "";
      synopsis = "Alternative to 'directory' package with ByteString based filepaths";
      description = "This provides a safer alternative to the 'directory'\npackage. FilePaths are ByteString based, so this\npackage only works on POSIX systems.\nFor a more high-level version of this with\nproper Path type, use 'hpath-io', which makes\nuse of this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."IfElse" or (buildDepError "IfElse"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."hpath-filepath" or (buildDepError "hpath-filepath"))
          (hsPkgs."hpath-posix" or (buildDepError "hpath-posix"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."streamly" or (buildDepError "streamly"))
          (hsPkgs."streamly-bytestring" or (buildDepError "streamly-bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unix-bytestring" or (buildDepError "unix-bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or (buildDepError "unbuildable"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."fail" or (buildDepError "fail"));
        buildable = if system.isWindows then false else true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hpath-directory" or (buildDepError "hpath-directory"))
            (hsPkgs."hpath-filepath" or (buildDepError "hpath-filepath"))
            (hsPkgs."hpath-posix" or (buildDepError "hpath-posix"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unix-bytestring" or (buildDepError "unix-bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or (buildDepError "unbuildable"));
          buildable = if system.isWindows then false else true;
          };
        };
      };
    }