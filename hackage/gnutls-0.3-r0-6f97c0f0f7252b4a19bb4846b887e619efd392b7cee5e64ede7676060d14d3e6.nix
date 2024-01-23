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
      identifier = { name = "gnutls"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://git.singpolyma.net/haskell-gnutls";
      url = "";
      synopsis = "Bindings for GNU libgnutls";
      description = "You almost certainly don't want to depend on this release.\n\nThis is a pre-alpha, almost useless release; its only purpose is to enable\nTLS support in some of my other libraries. More complete bindings for GNU TLS\nwill be released at a later date.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unexceptionalio-trans" or (errorHandler.buildDepError "unexceptionalio-trans"))
          ];
        libs = [ (pkgs."gnutls" or (errorHandler.sysDepError "gnutls")) ];
        pkgconfig = [
          (pkgconfPkgs."gnutls" or (errorHandler.pkgConfDepError "gnutls"))
          ];
        buildable = true;
        };
      };
    }