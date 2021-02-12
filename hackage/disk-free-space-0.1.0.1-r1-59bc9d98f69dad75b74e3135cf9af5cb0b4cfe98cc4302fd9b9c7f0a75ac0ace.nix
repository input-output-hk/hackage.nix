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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "disk-free-space"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/disk-free-space";
      url = "";
      synopsis = "Retrieve information about disk space usage";
      description = "A cross-platform library to retrieve information about disk space usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
        };
      };
    }