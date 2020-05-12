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
    flags = { halvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "entropy"; version = "0.4.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/TomMD/entropy";
      url = "";
      synopsis = "A platform independent entropy source";
      description = "A mostly platform independent method to obtain cryptographically strong entropy\n(RDRAND, urandom, CryptAPI, and patches welcome)\nUsers looking for cryptographically strong (number-theoretically\nsound) PRNGs should see the 'DRBG' package too.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            ]
          else if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else (pkgs.lib).optional (!system.isHalvm) (hsPkgs."unix" or (errorHandler.buildDepError "unix")));
        libs = (pkgs.lib).optionals (!(compiler.isGhcjs && true)) ((pkgs.lib).optional (system.isWindows) (pkgs."advapi32" or (errorHandler.sysDepError "advapi32")));
        buildable = true;
        };
      };
    }