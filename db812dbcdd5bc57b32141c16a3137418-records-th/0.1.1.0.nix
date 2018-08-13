{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "records-th";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "github.com/lassoinc/records-th";
      url = "";
      synopsis = "Template Haskell declarations for the records package";
      description = "Records-TH generates a variety of declarations for use with the records package,\nincluding datatypes, Name, FromJSON, ToJSON and Default instances, and a default field type.";
      buildType = "Simple";
    };
    components = {
      "records-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.records)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.kinds)
          (hsPkgs.type-functions)
          (hsPkgs.unordered-containers)
          (hsPkgs.data-default)
        ];
      };
    };
  }