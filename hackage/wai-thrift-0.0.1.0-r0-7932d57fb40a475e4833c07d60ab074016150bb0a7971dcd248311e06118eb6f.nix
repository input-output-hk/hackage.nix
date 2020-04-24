{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-thrift"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yogesh.sajanikar@yahoo.com";
      author = "Yogesh Sajanikar";
      homepage = "";
      url = "";
      synopsis = "Thrift transport layer for Wai";
      description = "Implements a read-only transport layer for Wai\nRequest, and write-only transport layer for Wai\nstreaming body.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."thrift" or ((hsPkgs.pkgs-errors).buildDepError "thrift"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      };
    }