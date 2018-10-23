{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-response";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora SEA";
      maintainer = "alp@zalora.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/zalora/servant";
      url = "";
      synopsis = "Machinery to express how servant should turn results of database operations into proper JSON-encodable response types";
      description = "Machinery to express how servant should turn results of database operations into proper JSON-encodable response types";
      buildType = "Simple";
    };
    components = {
      "servant-response" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-types)
          (hsPkgs.text)
        ];
      };
    };
  }