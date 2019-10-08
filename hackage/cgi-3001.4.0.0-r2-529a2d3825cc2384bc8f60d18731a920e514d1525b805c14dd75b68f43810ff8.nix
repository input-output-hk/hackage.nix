let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."multipart" or (buildDepError "multipart"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ];
        buildable = true;
        };
      exes = {
        "cookie.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "error.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "hello.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "printinput.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "redirect.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "showAllInputs.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        "upload.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        };
      };
    }