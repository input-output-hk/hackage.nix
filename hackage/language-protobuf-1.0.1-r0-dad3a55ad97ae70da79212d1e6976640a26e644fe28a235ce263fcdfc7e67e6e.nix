{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-protobuf"; version = "1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Language definition and parser for Protocol Buffers.";
      description = "Language definition and parser for Protocol Buffers files, according to <https://developers.google.com/protocol-buffers/docs/reference/proto3-spec>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }