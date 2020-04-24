{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "persistent-protobuf"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 Akamai Technologies, Inc.";
      maintainer = "mistone@akamai.com";
      author = "Michael Stone";
      homepage = "https://github.com/mstone/persistent-protobuf";
      url = "";
      synopsis = "Template-Haskell helpers for integrating protobufs with persistent.";
      description = "Template-Haskell helpers for integrating protobufs with persistent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."protocol-buffers" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }