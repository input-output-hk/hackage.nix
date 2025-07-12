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
      llvm1700 = false;
      llvm1800 = false;
      llvm1900 = false;
      llvm2000 = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-ffi"; version = "21.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://haskell.org/haskellwiki/LLVM";
      url = "";
      synopsis = "FFI bindings to the LLVM compiler toolkit.";
      description = "FFI bindings to the LLVM compiler toolkit.\n\nWe try to stay up to date with LLVM releases.\nThe current version of this package is compatible with LLVM 13-21.\nPlease understand that the package may or may not work\nagainst older LLVM releases.\n\nCaution: In many cases installation cannot run fully automatic.\nSee ReadMe.md for the details.";
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
                else if flags.llvm1700
                  then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-17" or (errorHandler.sysDepError "LLVM-17"))
                  else if flags.llvm1800
                    then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-18" or (errorHandler.sysDepError "LLVM-18"))
                    else if flags.llvm1900
                      then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-19" or (errorHandler.sysDepError "LLVM-19"))
                      else if flags.llvm2000
                        then pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-20" or (errorHandler.sysDepError "LLVM-20"))
                        else pkgs.lib.optional (!flags.pkgconfig) (pkgs."LLVM-21git" or (errorHandler.sysDepError "LLVM-21git")));
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
                else if flags.llvm1700
                  then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                    then [
                      (pkgconfPkgs."llvm-17" or (errorHandler.pkgConfDepError "llvm-17"))
                    ]
                    else [
                      (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                    ])
                  else if flags.llvm1800
                    then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                      then [
                        (pkgconfPkgs."llvm-18" or (errorHandler.pkgConfDepError "llvm-18"))
                      ]
                      else [
                        (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                      ])
                    else if flags.llvm1900
                      then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                        then [
                          (pkgconfPkgs."llvm-19" or (errorHandler.pkgConfDepError "llvm-19"))
                        ]
                        else [
                          (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                        ])
                      else if flags.llvm2000
                        then pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                          then [
                            (pkgconfPkgs."llvm-20" or (errorHandler.pkgConfDepError "llvm-20"))
                          ]
                          else [
                            (pkgconfPkgs."llvm" or (errorHandler.pkgConfDepError "llvm"))
                          ])
                        else pkgs.lib.optionals (flags.pkgconfig) (if flags.specificpkgconfig
                          then [
                            (pkgconfPkgs."llvm-21" or (errorHandler.pkgConfDepError "llvm-21"))
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