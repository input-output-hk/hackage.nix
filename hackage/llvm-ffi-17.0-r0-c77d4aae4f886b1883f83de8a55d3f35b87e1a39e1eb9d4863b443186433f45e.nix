{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      developer = false;
      buildexamples = false;
      pkgconfig = false;
      specificpkgconfig = true;
      llvm1300 = false;
      llvm1400 = false;
      llvm1500 = false;
      llvm1600 = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-ffi"; version = "17.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://haskell.org/haskellwiki/LLVM";
      url = "";
      synopsis = "FFI bindings to the LLVM compiler toolkit.";
      description = "FFI bindings to the LLVM compiler toolkit.\n\nInstallation cannot be done fully automatically.\nIt would require Cabal code that is bound to certain Cabal versions\nand is prone to fail.\nWe give several non-automatic ways\nthat also allow you to choose a particular LLVM version.\n\nFirst possibility is to point Cabal\nto the LLVM installation directories manually.\nIt is recommended to add options to your global @.cabal/config@:\n\n> extra-include-dirs: /usr/lib/llvm-17/include\n> extra-lib-dirs: /usr/lib/llvm-17/lib\n\nThis works for both @v1-build@ and @v2-build@.\nThe shown paths work for Debian and Ubuntu\nusing the LLVM repositories at <https://apt.llvm.org/>.\nYou can obtain them with\n\n> llvm-config-17 --includedir --libdir\n\nYou can choose specific LLVM versions per project.\nFor @v1-builds@ it works like so:\n\n> cabal install -fllvm1300 --extra-include-dirs=$(llvm-config-13 --includedir) --extra-lib-dirs=$(llvm-config-13 --libdir) yourpackage\n\nFor Nix-style build you must add some options\nto the @cabal.project.local@ file of your LLVM-related project:\n\n> package llvm-ffi\n>   flags: +llvm1300\n>   extra-include-dirs: /usr/lib/llvm-13/include\n>   extra-lib-dirs: /usr/lib/llvm-13/lib\n\nAlternatively, you may set environment variables globally or locally:\n\n> export CPATH=/usr/lib/llvm-17/include:$CPATH\n> export C_INCLUDE_PATH=/usr/lib/llvm-17/include:$C_INCLUDE_PATH\n> export LD_LIBRARY_PATH=/usr/lib/llvm-17/lib:$LD_LIBRARY_PATH\n\nYou can install and make LLVM library available\nin an elegant way using Nix:\n\n> nix-shell -p llvmPackages_17.libllvm\n\nThough, for compatibility of GHC with LLVM and GLIBC\nyou will need to use more packages from Nix\nand you better use a @shell.nix@ file for bundling those:\n\n> let\n>   pkgs = import <nixpkgs> {};\n> in\n> pkgs.mkShell {\n>   nativeBuildInputs = (with pkgs; [\n>     gnumake\n>     pkg-config\n>     ghc\n>     cabal-install\n>     llvmPackages_17.libllvm\n>   ]);\n> }\n\nThe second way uses @pkg-config@.\nYou can store above paths permanently in a @pkg-config@ file like @llvm.pc@.\nThe optimal way would be if LLVM installations or GNU/Linux distributions\nwould contain such a file, but they don't.\nInstead, you may generate it using the @llvm-pkg-config@ package\nor write one manually.\nThen you run\n\n> cabal install -fpkgConfig\n\nWe try to stay up to date with LLVM releases.\nThe current version of this package is compatible with LLVM 13-17.\nPlease understand that the package may or may not work\nagainst older LLVM releases.\n\nWarning for inplace builds:\nRe-configuring the package using, say @-fllvm1100@,\nand re-buildung it might result in corrupt code.\nYou must make sure that the stuff in @cbits@ is re-compiled.\nCabal or GHC may forget about that.\nYou are safe if you run @cabal clean@.\n\nCaution: Ugly crashes can occur\nif you have configured paths for LLVM version X in @.cabal/config@\nand try to build @llvm-ffi@ for a different LLVM version Y.\nCounterintuitively, global search paths have higher precedence\nthan local ones: <https://github.com/haskell/cabal/issues/7782>.\nBut that does not simply mean\nthat the local configuration is ignored completely.\nInstead the local library file is found,\nbecause its name libLLVM-Y.so is unique,\nwhereas the include file names clash,\nthus the ones from the global include directory are used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ (if flags.llvm1300
          then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-13" or (errorHandler.sysDepError "LLVM-13"))
          else if flags.llvm1400
            then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-14" or (errorHandler.sysDepError "LLVM-14"))
            else if flags.llvm1500
              then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-15" or (errorHandler.sysDepError "LLVM-15"))
              else if flags.llvm1600
                then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-16" or (errorHandler.sysDepError "LLVM-16"))
                else pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-17" or (errorHandler.sysDepError "LLVM-17")));
        pkgconfig = if flags.llvm1300
          then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
            then [
              (pkgconfPkgs."llvm-13" or (errorHandler.pkgConfDepError "llvm-13"))
            ]
            else [
              (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
            ])
          else if flags.llvm1400
            then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
              then [
                (pkgconfPkgs."llvm-14" or (errorHandler.pkgConfDepError "llvm-14"))
              ]
              else [
                (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
              ])
            else if flags.llvm1500
              then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                then [
                  (pkgconfPkgs."llvm-15" or (errorHandler.pkgConfDepError "llvm-15"))
                ]
                else [
                  (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                ])
              else if flags.llvm1600
                then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                  then [
                    (pkgconfPkgs."llvm-16" or (errorHandler.pkgConfDepError "llvm-16"))
                  ]
                  else [
                    (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                  ])
                else pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                  then [
                    (pkgconfPkgs."llvm-17" or (errorHandler.pkgConfDepError "llvm-17"))
                  ]
                  else [
                    (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                  ]);
        buildable = true;
      };
      exes = {
        "llvm-ffi-host" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-ffi" or (errorHandler.buildDepError "llvm-ffi"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-ffi-jit" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-ffi" or (errorHandler.buildDepError "llvm-ffi"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-ffi-offset" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-ffi" or (errorHandler.buildDepError "llvm-ffi"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }