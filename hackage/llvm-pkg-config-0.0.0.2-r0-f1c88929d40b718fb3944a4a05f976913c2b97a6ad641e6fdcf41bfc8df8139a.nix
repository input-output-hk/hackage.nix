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
      specVersion = "1.6";
      identifier = { name = "llvm-pkg-config"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "llvm@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Generate Pkg-Config configuration file for LLVM";
      description = "Building the @llvm-base@ package is fragile due to its configuration process.\nIt would be much simpler, if LLVM would support pkg-config\nsince this is nicely integrated in Cabal.\nHowever, LLVM developers do not seem to care much about it:\n<http://llvm.org/bugs/show_bug.cgi?id=9405>.\nIf we are lucky we get pkg-config support in Debian Linux.\nUntil this comes true, you can use this program.\nIt calls @llvm-config@ and writes its output to a PC file.\n\n> llvm-pkg-config\n\ncalls default @llvm-config@ and writes the generated file to standard output.\n\n> sudo llvm-pkg-config --install\n\ninstalls the PC file at a default location.\nThis should be the standard task to perform.\n\n> llvm-pkg-config --llvm-config=/custom/path/to/llvm-config\n\nif you have multiple versions of LLVM installed\nyou may choose an @llvm-config@ other than the default one.\n\nYou can check, whether your config file is found by @pkg-config@ using\n\n> pkg-config --modversion llvm\n\nIt should show the version number of LLVM you want to use.\n\nIf you install @llvm.pc@ in a non-standard location\nyou may need to extend the search path for @pkg-config@\n\n> export PKG_CONFIG_PATH=your-llvm-pc-path:\$PKG_CONFIG_PATH\n\nThe package also includes the bash script @make-pkg-config.sh@\nthat should also generate the @llvm.pc@ file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "llvm-pkg-config" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }