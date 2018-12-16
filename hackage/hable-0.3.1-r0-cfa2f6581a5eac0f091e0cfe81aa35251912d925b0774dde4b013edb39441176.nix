{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hable";
        version = "0.3.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "Mekeor Melire";
      maintainer = "mekeor.melire@gmail.com";
      author = "Mekeor Melire";
      homepage = "https://github.com/mekeor/hable";
      url = "";
      synopsis = "customizable pretty printer library for tables";
      description = "customizable pretty printer library for tables, e.g. using boxing characters";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }