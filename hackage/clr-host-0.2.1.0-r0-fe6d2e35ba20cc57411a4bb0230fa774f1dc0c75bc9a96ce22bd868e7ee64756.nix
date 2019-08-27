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
    flags = { enable_dotnet = false; enable_mono = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "clr-host"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Tim Matthews";
      maintainer = "Nikos Baxevanis <nikos.baxevanis@gmail.com>";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-host";
      url = "";
      synopsis = "Hosting the Common Language Runtime";
      description = "clr-host is a library that provides the ability to host (also known as embed) the\ncommon language runtime within the current Haskell process. Generally you'll only\ninterface directly to this library to start the CLR, and the other code here is\nfor higher level abstractions to use.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or (buildToolDepError "transformers")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."clr-marshal" or (buildDepError "clr-marshal"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
        libs = ((pkgs.lib).optionals (flags.enable_dotnet) [
          (pkgs."oleaut32" or (sysDepError "oleaut32"))
          (pkgs."ole32" or (sysDepError "ole32"))
          ] ++ (pkgs.lib).optionals (flags.enable_mono) [
          (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
          (pkgs."mono-2.0" or (sysDepError "mono-2.0"))
          ]) ++ (pkgs.lib).optionals (!flags.enable_dotnet && !flags.enable_mono) (if system.isWindows
          then [
            (pkgs."oleaut32" or (sysDepError "oleaut32"))
            (pkgs."ole32" or (sysDepError "ole32"))
            ]
          else [
            (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
            (pkgs."mono-2.0" or (sysDepError "mono-2.0"))
            ]);
        };
      tests = {
        "clr-host-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clr-host" or (buildDepError "clr-host"))
            ];
          };
        };
      };
    }