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
        name = "reproject";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/reproject#readme";
      url = "";
      synopsis = "Define and combine \"materialized\" projections";
      description = "Define and combine \"materialized\" projections";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.labels)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "reproject-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.reproject)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }