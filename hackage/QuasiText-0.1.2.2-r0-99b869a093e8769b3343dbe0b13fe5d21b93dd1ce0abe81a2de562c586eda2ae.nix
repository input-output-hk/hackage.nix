{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "QuasiText";
        version = "0.1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/QuasiText";
      url = "";
      synopsis = "A QuasiQuoter for Text.";
      description = "A QuasiQuoter for interpolating values into Text strings.";
      buildType = "Simple";
    };
    components = {
      "QuasiText" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
        ];
      };
    };
  }