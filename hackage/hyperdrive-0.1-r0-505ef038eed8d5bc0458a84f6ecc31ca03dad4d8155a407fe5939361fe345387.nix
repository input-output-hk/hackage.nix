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
      specVersion = "1.6";
      identifier = { name = "hyperdrive"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "a fast, trustworthy HTTP(s) server built";
      description = "hyperdrive aims to provide an HTTP server which is not only\nextremely fast, but also provides a high-level of proof that\nits implementation is correct.\n\nhyperdrive is still in alpha and not at all suitable for\nuse. The current implementation is relatively fast, but does\nnot yet use any of the techniques for proof-of-correctness. It\nalso does not implement many essential features yet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = { "pong" = { buildable = true; }; };
      };
    }