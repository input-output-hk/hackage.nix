{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "websockets"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.cc>";
      author = "Siniša Biđin";
      homepage = "";
      url = "";
      synopsis = "Implements the WebSocket protocol.";
      description = "Implements certain basics of the WebSocket protocol\nas defined at <http://is.gd/eSdLB>, allowing the\ncreation of simple WebSocket-capable servers. Works\nwith Handles and strict ByteStrings.";
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