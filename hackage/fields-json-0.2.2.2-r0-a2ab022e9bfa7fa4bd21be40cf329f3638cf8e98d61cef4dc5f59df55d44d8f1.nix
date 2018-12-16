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
      specVersion = "1.6";
      identifier = {
        name = "fields-json";
        version = "0.2.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mariusz@scrive.com";
      author = "Scrive";
      homepage = "";
      url = "";
      synopsis = "Abusing monadic syntax JSON objects generation.";
      description = "Generation of big, complex JSON objects with Text.JSON is painful. And autoderivation is not always posible.\nCheck documentation of Text.JSON.Gen for more info.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.json)
          (hsPkgs.containers)
          (hsPkgs.base64-bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.mtl)
        ];
      };
    };
  }