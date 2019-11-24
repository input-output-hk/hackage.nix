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
    flags = {
      developer = false;
      buildexamples = false;
      pkgconfig = false;
      specificpkgconfig = true;
      llvm304 = false;
      llvm305 = false;
      llvm306 = false;
      llvm307 = false;
      llvm308 = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-ffi"; version = "3.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://haskell.org/haskellwiki/LLVM";
      url = "";
      synopsis = "FFI bindings to the LLVM compiler toolkit.";
      description = "FFI bindings to the LLVM compiler toolkit.\n\nInstallation cannot be done fully automatically.\nIt would require Cabal code that is bound to certain Cabal versions\nand is prone to fail.\nWe give several non-automatic ways\nthat also allow you to choose a particular LLVM version.\n\nFirst possibility is to point Cabal\nto the LLVM installation directories manually.\nOn Ubuntu this would look like this:\n\n> cabal install --extra-include-dirs=/usr/lib/llvm-3.9/include --extra-lib-dirs=/usr/lib/llvm-3.9/lib llvm-ffi\n\nYou can store such paths permanently in a @pkg-config@ file like @llvm.pc@.\nThe optimal way would be if LLVM installations or GNU/Linux distributions\nwould contain such a file, but they don't.\nInstead, you may generate it using the @llvm-pkg-config@ package\nor write one manually.\nThen you run\n\n> cabal install -fpkgConfig\n\nWe try to stay up to date with LLVM releases.\nThe current version of this package is compatible with LLVM 3.4-3.9.\nPlease understand that the package may or may not work\nagainst older LLVM releases.\n\nWarning for inplace builds:\nRe-configuring the package using, say -fllvm307,\nand re-buildung it might result in corrupt code.\nYou must make sure that the stuff in @cbits@ is re-compiled.\nCabal or GHC may forget about that.\nYou are safe if you run @cabal clean@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."enumset" or (buildDepError "enumset"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = [
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ] ++ (if flags.llvm304
          then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.4" or (sysDepError "LLVM-3.4"))
          else if flags.llvm305
            then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.5" or (sysDepError "LLVM-3.5"))
            else if flags.llvm306
              then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.6" or (sysDepError "LLVM-3.6"))
              else if flags.llvm307
                then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.7" or (sysDepError "LLVM-3.7"))
                else if flags.llvm308
                  then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.8" or (sysDepError "LLVM-3.8"))
                  else (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.9" or (sysDepError "LLVM-3.9")));
        pkgconfig = if flags.llvm304
          then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
            then [ (pkgconfPkgs."llvm-3.4" or (pkgConfDepError "llvm-3.4")) ]
            else [ (pkgconfPkgs."llvm" or (pkgConfDepError "llvm")) ])
          else if flags.llvm305
            then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
              then [ (pkgconfPkgs."llvm-3.5" or (pkgConfDepError "llvm-3.5")) ]
              else [ (pkgconfPkgs."llvm" or (pkgConfDepError "llvm")) ])
            else if flags.llvm306
              then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                then [
                  (pkgconfPkgs."llvm-3.6" or (pkgConfDepError "llvm-3.6"))
                  ]
                else [ (pkgconfPkgs."llvm" or (pkgConfDepError "llvm")) ])
              else if flags.llvm307
                then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                  then [
                    (pkgconfPkgs."llvm-3.7" or (pkgConfDepError "llvm-3.7"))
                    ]
                  else [ (pkgconfPkgs."llvm" or (pkgConfDepError "llvm")) ])
                else if flags.llvm308
                  then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                    then [
                      (pkgconfPkgs."llvm-3.8" or (pkgConfDepError "llvm-3.8"))
                      ]
                    else [ (pkgconfPkgs."llvm" or (pkgConfDepError "llvm")) ])
                  else (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                    then [
                      (pkgconfPkgs."llvm-3.9" or (pkgConfDepError "llvm-3.9"))
                      ]
                    else [ (pkgconfPkgs."llvm" or (pkgConfDepError "llvm")) ]);
        buildable = true;
        };
      exes = {
        "llvm-ffi-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-ffi" or (buildDepError "llvm-ffi"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }