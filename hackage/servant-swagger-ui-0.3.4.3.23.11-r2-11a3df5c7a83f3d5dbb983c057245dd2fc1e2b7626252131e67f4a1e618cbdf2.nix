{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-swagger-ui"; version = "0.3.4.3.23.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/haskell-servant/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nhttps://github.com/swagger-api/swagger-ui";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."servant-swagger-ui-core" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger-ui-core"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."file-embed-lzma" or ((hsPkgs.pkgs-errors).buildDepError "file-embed-lzma"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }