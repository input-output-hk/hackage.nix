{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { curl = false; libcurl = false; threaded = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "leksah-server"; version = "0.10.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "2007-2011 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://leksah.org";
      url = "http://code.haskell.org/leksah-collector";
      synopsis = "Metadata collection for leksah";
      description = "The interface to GHC-API for leksah";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."binary-shared" or ((hsPkgs.pkgs-errors).buildDepError "binary-shared"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ltk" or ((hsPkgs.pkgs-errors).buildDepError "ltk"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process-leksah" or ((hsPkgs.pkgs-errors).buildDepError "process-leksah"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.12"
          then [
            (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
            ]
          else [
            (hsPkgs."haddock-leksah" or ((hsPkgs.pkgs-errors).buildDepError "haddock-leksah"))
            ])) ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.libcurl) (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
        buildable = true;
        };
      exes = {
        "leksah-server" = {
          depends = (([
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."binary-shared" or ((hsPkgs.pkgs-errors).buildDepError "binary-shared"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ltk" or ((hsPkgs.pkgs-errors).buildDepError "ltk"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."process-leksah" or ((hsPkgs.pkgs-errors).buildDepError "process-leksah"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "6.12"
            then [
              (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
              ]
            else [
              (hsPkgs."haddock-leksah" or ((hsPkgs.pkgs-errors).buildDepError "haddock-leksah"))
              ])) ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.libcurl) (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"));
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
          buildable = true;
          };
        "leksahecho" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."process-leksah" or ((hsPkgs.pkgs-errors).buildDepError "process-leksah"))
            ];
          buildable = true;
          };
        };
      };
    }