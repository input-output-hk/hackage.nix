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
    flags = { new-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "feed"; version = "0.3.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Isaac Jones <ijones@galois.com>";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
      description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }