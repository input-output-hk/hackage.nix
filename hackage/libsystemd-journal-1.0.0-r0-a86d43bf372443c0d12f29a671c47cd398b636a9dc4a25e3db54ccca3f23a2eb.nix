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
      identifier = { name = "libsystemd-journal"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2014";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/libsystemd-journal";
      url = "";
      synopsis = "Haskell bindings to libsystemd-journal";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-bytestring" or (errorHandler.buildDepError "unix-bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          ];
        libs = [
          (pkgs."systemd-journal" or (errorHandler.sysDepError "systemd-journal"))
          ];
        buildable = true;
        };
      };
    }