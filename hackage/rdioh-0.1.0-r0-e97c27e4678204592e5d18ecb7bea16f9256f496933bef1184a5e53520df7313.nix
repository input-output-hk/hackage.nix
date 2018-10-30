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
        name = "rdioh";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Aditya Bhargava <aditya at wefoundland.com>";
      author = "Aditya Bhargava";
      homepage = "";
      url = "";
      synopsis = "A Haskell wrapper for Rdio's API.";
      description = "This library implements methods for Rdio's API.\nIt supports 2-legged and 3-legged OAuth.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.MissingH)
          (hsPkgs.bytestring)
          (hsPkgs.json)
          (hsPkgs.hoauth)
          (hsPkgs.urlencoded)
        ];
      };
    };
  }