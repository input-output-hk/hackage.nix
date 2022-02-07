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
      identifier = { name = "batchd-libvirt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2022 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "ILyaPortnov";
      homepage = "https://github.com/portnov/batchd/batchd-libvirt#readme";
      url = "";
      synopsis = "host controller for batchd, which controls virtual machines via libvirt library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text-format-heavy" or (errorHandler.buildDepError "text-format-heavy"))
          (hsPkgs."heavy-logger" or (errorHandler.buildDepError "heavy-logger"))
          (hsPkgs."batchd-core" or (errorHandler.buildDepError "batchd-core"))
          (hsPkgs."libvirt-hs" or (errorHandler.buildDepError "libvirt-hs"))
          ];
        buildable = true;
        };
      };
    }