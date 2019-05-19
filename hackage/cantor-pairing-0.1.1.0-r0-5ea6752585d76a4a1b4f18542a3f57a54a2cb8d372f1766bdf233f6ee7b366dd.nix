{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "cantor-pairing"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2018";
      maintainer = "identicalsnowflake@protonmail.com";
      author = "Identical Snowflake";
      homepage = "https://github.com/identicalsnowflake/cantor-pairing";
      url = "";
      synopsis = "Convert data to and from a natural number representation";
      description = "Convert data to and from a natural number representation conveniently using GHC Generics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.integer-gmp)
          (hsPkgs.integer-logarithms)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cantor-pairing)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }