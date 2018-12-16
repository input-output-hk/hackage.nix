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
        name = "servant-scotty";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora SEA";
      maintainer = "alp@zalora.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/zalora/servant";
      url = "";
      synopsis = "Generate a web service for servant 'Resource's using scotty and JSON";
      description = "Generate a web service for servant 'Resource's using scotty and JSON";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.servant)
          (hsPkgs.servant-response)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
        ];
      };
    };
  }