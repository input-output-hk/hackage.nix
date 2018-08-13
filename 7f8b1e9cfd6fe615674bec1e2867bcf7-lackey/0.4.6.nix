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
        name = "lackey";
        version = "0.4.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/lackey#readme";
      url = "";
      synopsis = "Generate Ruby clients from Servant APIs.";
      description = "Lackey generates Ruby clients from Servant APIs.";
      buildType = "Simple";
    };
    components = {
      "lackey" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-foreign)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-foreign)
            (hsPkgs.text)
            (hsPkgs.lackey)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }