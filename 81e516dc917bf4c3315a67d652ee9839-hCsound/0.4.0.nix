{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      usedouble = true;
      useframework = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hCsound";
        version = "0.4.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "";
      url = "";
      synopsis = "interface to CSound API";
      description = "Haskell interface to Csound API.";
      buildType = "Simple";
    };
    components = {
      "hCsound" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.base)
          ]
          else [ (hsPkgs.base) ]);
        libs = [
          (pkgs.sndfile)
        ] ++ pkgs.lib.optionals (!(system.isOsx && _flags.useframework)) (if _flags.usedouble
          then [ (pkgs.csound64) ]
          else [ (pkgs.csound32) ]);
        frameworks = pkgs.lib.optionals (system.isOsx && _flags.useframework) (if _flags.usedouble
          then [ (pkgs.CsoundLib64) ]
          else [ (pkgs.CsoundLib) ]);
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }