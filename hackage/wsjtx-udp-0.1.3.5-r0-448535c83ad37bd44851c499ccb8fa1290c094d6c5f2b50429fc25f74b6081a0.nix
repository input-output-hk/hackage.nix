{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wsjtx-udp"; version = "0.1.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc.Fontaine@gmx.de";
      author = "Marc Fontaine";
      homepage = "https://github.com/MarcFontaine/wsjtx-udp";
      url = "";
      synopsis = "WSJT-X UDP protocol";
      description = "Utilities for the WSJT-X UDP protocol.\nEncoding and decoding USP packages to binary and JSON and a UDP server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."binary-parsers" or ((hsPkgs.pkgs-errors).buildDepError "binary-parsers"))
          ];
        buildable = true;
        };
      exes = {
        "wsjtx-dump-udp" = {
          depends = (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wsjtx-udp" or ((hsPkgs.pkgs-errors).buildDepError "wsjtx-udp"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }