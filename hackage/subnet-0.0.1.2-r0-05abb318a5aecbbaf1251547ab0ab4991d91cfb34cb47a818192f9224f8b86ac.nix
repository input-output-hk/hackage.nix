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
        name = "subnet";
        version = "0.0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Gregory Ganley <gcganley@gcganley.com>";
      author = "Gregory Ganley";
      homepage = "https://github.com/gcganley/subnet";
      url = "";
      synopsis = "subnetting calculator";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.split)
          (hsPkgs.base)
        ];
      };
    };
  }