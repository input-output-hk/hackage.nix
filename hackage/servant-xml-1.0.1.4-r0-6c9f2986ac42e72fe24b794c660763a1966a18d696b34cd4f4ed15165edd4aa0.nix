{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "servant-xml"; version = "1.0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 - 2019 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.xmlbf)
          (hsPkgs.xmlbf-xeno)
          ];
        };
      };
    }