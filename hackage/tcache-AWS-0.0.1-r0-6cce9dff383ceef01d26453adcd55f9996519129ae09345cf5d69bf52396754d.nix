{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "tcache-AWS"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Alberto Gómez Corona";
      maintainer = "Alberto Gómez Corona";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "tcache  using Amazon Web Services as default persistence mechanism";
      description = "See examples in \"Data.TCache.AWS\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."TCache" or ((hsPkgs.pkgs-errors).buildDepError "TCache"))
          (hsPkgs."aws" or ((hsPkgs.pkgs-errors).buildDepError "aws"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }