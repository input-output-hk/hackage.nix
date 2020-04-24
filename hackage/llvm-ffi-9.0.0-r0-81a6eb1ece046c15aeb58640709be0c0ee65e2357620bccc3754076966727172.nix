{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      developer = false;
      buildexamples = false;
      pkgconfig = false;
      specificpkgconfig = true;
      llvm309 = false;
      llvm400 = false;
      llvm500 = false;
      llvm600 = false;
      llvm700 = false;
      llvm800 = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-ffi"; version = "9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://haskell.org/haskellwiki/LLVM";
      url = "";
      synopsis = "FFI bindings to the LLVM compiler toolkit.";
      description = "FFI bindings to the LLVM compiler toolkit.\n\nInstallation cannot be done fully automatically.\nIt would require Cabal code that is bound to certain Cabal versions\nand is prone to fail.\nWe give several non-automatic ways\nthat also allow you to choose a particular LLVM version.\n\nFirst possibility is to point Cabal\nto the LLVM installation directories manually.\nOn Ubuntu this would look like this:\n\n> cabal install --extra-include-dirs=/usr/lib/llvm-9/include --extra-lib-dirs=/usr/lib/llvm-9/lib llvm-ffi\n\nYou can store such paths permanently in a @pkg-config@ file like @llvm.pc@.\nThe optimal way would be if LLVM installations or GNU/Linux distributions\nwould contain such a file, but they don't.\nInstead, you may generate it using the @llvm-pkg-config@ package\nor write one manually.\nThen you run\n\n> cabal install -fpkgConfig\n\nWe try to stay up to date with LLVM releases.\nThe current version of this package is compatible with LLVM 3.9-9.\nPlease understand that the package may or may not work\nagainst older LLVM releases.\n\nWarning for inplace builds:\nRe-configuring the package using, say -fllvm600,\nand re-buildung it might result in corrupt code.\nYou must make sure that the stuff in @cbits@ is re-compiled.\nCabal or GHC may forget about that.\nYou are safe if you run @cabal clean@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."enumset" or ((hsPkgs.pkgs-errors).buildDepError "enumset"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ] ++ (if flags.llvm309
          then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-3.9" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-3.9"))
          else if flags.llvm400
            then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-4.0" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-4.0"))
            else if flags.llvm500
              then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-5.0" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-5.0"))
              else if flags.llvm600
                then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-6.0" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-6.0"))
                else if flags.llvm700
                  then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-7" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-7"))
                  else if flags.llvm800
                    then (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-8" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-8"))
                    else (pkgs.lib).optional (!flags.pkgconfig) (pkgs."LLVM-9" or ((hsPkgs.pkgs-errors).sysDepError "LLVM-9")));
        pkgconfig = if flags.llvm309
          then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
            then [
              (pkgconfPkgs."llvm-3.9" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-3.9"))
              ]
            else [
              (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
              ])
          else if flags.llvm400
            then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
              then [
                (pkgconfPkgs."llvm-4.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-4.0"))
                ]
              else [
                (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
                ])
            else if flags.llvm500
              then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                then [
                  (pkgconfPkgs."llvm-5.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-5.0"))
                  ]
                else [
                  (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
                  ])
              else if flags.llvm600
                then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                  then [
                    (pkgconfPkgs."llvm-6.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-6.0"))
                    ]
                  else [
                    (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
                    ])
                else if flags.llvm700
                  then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                    then [
                      (pkgconfPkgs."llvm-7" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-7"))
                      ]
                    else [
                      (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
                      ])
                  else if flags.llvm800
                    then (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                      then [
                        (pkgconfPkgs."llvm-8" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-8"))
                        ]
                      else [
                        (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
                        ])
                    else (pkgs.lib).optionals (flags.pkgconfig) (if flags.specificpkgconfig
                      then [
                        (pkgconfPkgs."llvm-9" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm-9"))
                        ]
                      else [
                        (pkgconfPkgs."llvm" or ((hsPkgs.pkgs-errors).pkgConfDepError "llvm"))
                        ]);
        buildable = true;
        };
      exes = {
        "llvm-ffi-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-ffi" or ((hsPkgs.pkgs-errors).buildDepError "llvm-ffi"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-ffi-offset" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-ffi" or ((hsPkgs.pkgs-errors).buildDepError "llvm-ffi"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }