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
      specVersion = "1.18";
      identifier = { name = "entropy"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/TomMD/entropy";
      url = "";
      synopsis = "A platform independent entropy source";
      description = "A platform independent method to obtain cryptographically strong entropy\n(RDRAND when available anywhere, urandom on nix, CryptAPI on Windows, patches welcome).\nUsers looking for cryptographically strong (number-theoretically\nsound) PRNGs should see the 'DRBG' package too.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (!system.isHalvm) (hsPkgs."unix" or (errorHandler.buildDepError "unix")));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."advapi32" or (errorHandler.sysDepError "advapi32"));
        buildable = true;
        };
      };
    }