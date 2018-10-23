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
        name = "indices";
        version = "1.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "indices";
      description = "";
      buildType = "Simple";
    };
    components = {
      "indices" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }