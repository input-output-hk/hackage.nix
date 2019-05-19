{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { halvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "entropy"; version = "0.4.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/TomMD/entropy";
      url = "";
      synopsis = "A platform independent entropy source";
      description = "A mostly platform independent (not GHCJS) method to obtain cryptographically strong entropy\n(RDRAND, urandom, CryptAPI, and patches welcome)\nUsers looking for cryptographically strong (number-theoretically\nsound) PRNGs should see the 'DRBG' package too.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else (pkgs.lib).optional (!system.isHalvm) (hsPkgs.unix));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."advapi32");
        };
      };
    }