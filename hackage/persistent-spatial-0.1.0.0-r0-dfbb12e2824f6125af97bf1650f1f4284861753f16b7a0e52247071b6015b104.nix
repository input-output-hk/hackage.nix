{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-spatial"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Satsuma Labs";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/persistent-spatial#readme";
      url = "";
      synopsis = "Database agnostic, spatially indexed type for geographic points.";
      description = "Defines type for storing geographic coordinates that can be spatially indexed by any database which supports Word64.\nThis inxeding is implemented using a normal integer index on points repersented using a Morton Z-Order curve.\nGeographic regions are transformed into a covering set of tiles (contigious ranges) which can be used in a single query.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.integer-logarithms)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.http-api-data)
          (hsPkgs.text)
          (hsPkgs.persistent)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.persistent-spatial)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-api-data)
            (hsPkgs.text)
            (hsPkgs.persistent)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }