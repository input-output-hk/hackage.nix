{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hspec-laws"; version = "0.0.0"; };
      license = "MIT";
      copyright = "(c) 2012-2014 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Document and test laws for standard type classes";
      description = "Document and test laws for standard type classes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.QuickCheck) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec-laws)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        "README" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec-laws)
            (hsPkgs.hspec)
            (hsPkgs.markdown-unlit)
            ];
          };
        };
      };
    }