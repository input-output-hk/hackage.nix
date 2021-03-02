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
      specVersion = "1.12";
      identifier = { name = "hpath-filepath"; version = "0.10.3"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald 2016";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "";
      url = "";
      synopsis = "ByteString based filepath manipulation";
      description = "ByteString based filepath manipulation, similar to 'filepath' package. This is POSIX only.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
        buildable = if system.isWindows then false else true;
        };
      };
    }