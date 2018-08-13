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
      specVersion = "1.10";
      identifier = {
        name = "gravatar";
        version = "0.8.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generate Gravatar image URLs";
      description = "Generate Gravatar image URLs";
      buildType = "Simple";
    };
    components = {
      "gravatar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
          (hsPkgs.HTTP)
          (hsPkgs.data-default)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.gravatar)
            (hsPkgs.text)
          ];
        };
      };
    };
  }