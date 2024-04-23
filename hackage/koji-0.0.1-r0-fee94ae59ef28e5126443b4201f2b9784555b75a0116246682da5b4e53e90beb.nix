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
      specVersion = "1.18";
      identifier = { name = "koji"; version = "0.0.1"; };
      license = "GPL-2.0-only";
      copyright = "2020-2021 Jens Petersen";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/koji-hs";
      url = "";
      synopsis = "Koji buildsystem XML-RPC API bindings";
      description = "This library provides Haskell bindings to the Koji XML RPC API.\nKoji is a distributed rpm buildsystem used by Fedora, Centos,\nRed Hat, and other projects. See <https://pagure.io/koji/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }