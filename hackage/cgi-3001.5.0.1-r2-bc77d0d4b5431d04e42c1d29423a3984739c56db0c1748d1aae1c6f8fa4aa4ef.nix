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
    flags = { install-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cgi"; version = "3001.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, John Chee, Andy Gill, Anders Kaseorg,\nIan Lynagh, Erik Meijer, Sven Panne, Jeremy Shaw, Peter Simons";
      maintainer = "John Chee <cheecheeo@gmail.com>, Peter Simons <simons@cryp.to>";
      author = "Bjorn Bringert";
      homepage = "https://github.com/cheecheeo/haskell-cgi";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."multipart" or (errorHandler.buildDepError "multipart"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ];
        buildable = true;
        };
      exes = {
        "cookie.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "error.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "hello.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "printinput.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "redirect.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "showAllInputs.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "upload.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        };
      };
    }