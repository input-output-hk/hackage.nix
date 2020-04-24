{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { install-examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cgi"; version = "3001.4.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."multipart" or ((hsPkgs.pkgs-errors).buildDepError "multipart"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          ];
        buildable = true;
        };
      exes = {
        "cookie.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "error.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "hello.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "printinput.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "redirect.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "showAllInputs.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "upload.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        };
      };
    }