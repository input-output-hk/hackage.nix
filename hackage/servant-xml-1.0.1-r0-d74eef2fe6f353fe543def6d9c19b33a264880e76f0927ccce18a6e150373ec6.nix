{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-xml"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Colin Woodbury";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/servant-xml";
      url = "";
      synopsis = "Servant support for the XML Content-Type";
      description = "Servant support for the Content-Type of /application\\/xml/. Anything with 'ToXml' and 'FromXml' instances can be automatically marshalled.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"))
          (hsPkgs."xmlbf-xeno" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf-xeno"))
          ];
        buildable = true;
        };
      };
    }