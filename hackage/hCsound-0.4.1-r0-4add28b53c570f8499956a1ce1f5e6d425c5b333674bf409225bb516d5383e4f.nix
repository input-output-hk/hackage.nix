{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; usedouble = true; useframework = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hCsound"; version = "0.4.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        libs = [
          (pkgs."sndfile" or ((hsPkgs.pkgs-errors).sysDepError "sndfile"))
          ] ++ (pkgs.lib).optionals (!(system.isOsx && flags.useframework)) (if flags.usedouble
          then [
            (pkgs."csound64" or ((hsPkgs.pkgs-errors).sysDepError "csound64"))
            ]
          else [
            (pkgs."csound32" or ((hsPkgs.pkgs-errors).sysDepError "csound32"))
            ]);
        frameworks = (pkgs.lib).optionals (system.isOsx && flags.useframework) (if flags.usedouble
          then [
            (pkgs."CsoundLib64" or ((hsPkgs.pkgs-errors).sysDepError "CsoundLib64"))
            ]
          else [
            (pkgs."CsoundLib" or ((hsPkgs.pkgs-errors).sysDepError "CsoundLib"))
            ]);
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }