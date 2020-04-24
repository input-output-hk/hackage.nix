{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "websockets"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.cc>";
      author = "Siniša Biđin";
      homepage = "";
      url = "";
      synopsis = "Create WebSocket servers";
      description = "A library for creating WebSocket-capable servers, where the implemented protocol is defined here: <http://is.gd/eSdLB>.\n\nThis library is tested with Chromium >=7, Opera >=11 and Firefox >=4 and is a work in progress.\n\nExamples of usage can be found in the Network.WebSockets module documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }