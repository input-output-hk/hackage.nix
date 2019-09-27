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
    flags = { use_mono = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Salsa"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2014 Andrew Appleyard, Tim Matthews";
      maintainer = "tim.matthews7@gmail.com";
      author = "Andrew Appleyard";
      homepage = "http://haskell.org/haskellwiki/Salsa";
      url = "";
      synopsis = "A .NET Bridge for Haskell";
      description = "Salsa is an experimental Haskell library and code generator that allows\nHaskell programs to host the .NET runtime and interact with .NET libraries.\nIt uses type families extensively to provide a type-safe mapping of the .NET\nobject model in the Haskell type system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if !system.isWindows || flags.use_mono
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            ];
        libs = if !system.isWindows || flags.use_mono
          then [
            (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
            (pkgs."mono-2.0" or (sysDepError "mono-2.0"))
            ]
          else [
            (pkgs."oleaut32" or (sysDepError "oleaut32"))
            (pkgs."ole32" or (sysDepError "ole32"))
            ];
        buildable = true;
        };
      };
    }