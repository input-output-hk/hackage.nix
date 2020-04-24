{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "safer-file-handles-bytestring"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Extends safer-file-handles with ByteString operations";
      description = "Extends @safer-file-handles@ with @ByteString@ operations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."regions" or ((hsPkgs.pkgs-errors).buildDepError "regions"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."explicit-iomodes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "explicit-iomodes-bytestring"))
          (hsPkgs."safer-file-handles" or ((hsPkgs.pkgs-errors).buildDepError "safer-file-handles"))
          ];
        buildable = true;
        };
      };
    }