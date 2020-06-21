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
    flags = { no-exe = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "drunken-bishop"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "©2020 Getty Ritter";
      maintainer = "Getty Ritter <drunken-bishop@infinitenegativeutility.com>";
      author = "Getty Ritter <drunken-bishop@infinitenegativeutility.com>";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Drunken Bishop visual fingerprinting algorithm";
      description = "The [Drunken Bishop](http://www.dirk-loss.de/sshvis/drunken_bishop.pdf)\nalgorithm is a visual fingerprinting algorithm originally\nimplemented by OpenSSH for visualizing key fingerprints. This\npackage implements OpenSSH's visualization while also offering\nextra configuration to allow for specialized uses.\n\nThe Drunken Bishop algorithm was designed heuristically, and\ntherefore __should not be considered cryptographically strong__.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          ];
        buildable = true;
        };
      exes = {
        "drunken-bishop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drunken-bishop" or (errorHandler.buildDepError "drunken-bishop"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            ];
          buildable = if flags.no-exe then false else true;
          };
        };
      };
    }