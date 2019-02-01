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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.multipart)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.xhtml)
          ];
        };
      exes = {
        "cookie.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.cgi)
            (hsPkgs.xhtml)
            ];
          };
        "error.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.cgi)
            ];
          };
        "hello.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.cgi)
            ];
          };
        "printinput.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.cgi)
            ];
          };
        "redirect.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.cgi)
            ];
          };
        "showAllInputs.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.cgi)
            ];
          };
        "upload.cgi" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cgi)
            (hsPkgs.xhtml)
            ];
          };
        };
      };
    }