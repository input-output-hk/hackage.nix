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
        name = "mulang";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "franco@mumuki.org";
      author = "Franco Leonardo Bulgarelli";
      homepage = "";
      url = "";
      synopsis = "The Mu Language, a non-computable extended Lambda Calculus";
      description = "";
      buildType = "Simple";
    };
    components = {
      "mulang" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.haskell-src)
            (hsPkgs.hspec)
            (hsPkgs.mulang)
          ];
        };
      };
    };
  }