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
      specVersion = "1.4";
      identifier = {
        name = "subnet";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Gregory Ganley <gcganley@gcganley.com>";
      author = "Gregory Ganley <gcganley@gcganley.com>";
      homepage = "https://github.com/gcganley/subnet";
      url = "";
      synopsis = "";
      description = "uses combinators to describe subnets";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }