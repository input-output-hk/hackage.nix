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
      identifier = { name = "scgi"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Eric Sessoms 2007, (c) Stephen Blackheath 2008";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Eric Sessoms <nubgames@gmail.com>, Stephen Blackheath <http://blacksapphire.com/antispam/>";
      homepage = "";
      url = "";
      synopsis = "A Haskell library for writing SCGI programs.";
      description = "THIS LIBRARY IS DEPRECATED. For new applications, please use WAI\n- see <http://hackage.haskell.org/package/wai>.\n\nThis library lets you write SCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to SCGI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
        ];
        buildable = true;
      };
    };
  }