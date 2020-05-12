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
      identifier = { name = "http-directory"; version = "0.1.3"; };
      license = "MIT";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/http-directory";
      url = "";
      synopsis = "http directory listing library";
      description = "Library for listing the files (links) in an http directory.\nAlso can check the size, existence, modtime of files,\nand url redirects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."html-conduit" or (errorHandler.buildDepError "html-conduit"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-date" or (errorHandler.buildDepError "http-date"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          ];
        buildable = true;
        };
      };
    }