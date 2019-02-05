{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "scrapbook"; version = "0.3.3"; };
      license = "MIT";
      copyright = "2018 MATSUBARA Nobutada";
      maintainer = "MATSUBARA Nobutada";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/scrapbook#readme";
      url = "";
      synopsis = "Automatically derive Kotlin class to query servant webservices";
      description = "Please see the README on Github at <https://github.com/matsubara0507/scrapbook#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.extensible)
          (hsPkgs.feed)
          (hsPkgs.req)
          (hsPkgs.rio)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "scrapbook" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.drinkery)
            (hsPkgs.extensible)
            (hsPkgs.feed)
            (hsPkgs.gitrev)
            (hsPkgs.req)
            (hsPkgs.rio)
            (hsPkgs.scrapbook)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            (hsPkgs.yaml)
            ];
          };
        };
      tests = {
        "scrapbook-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.extensible)
            (hsPkgs.feed)
            (hsPkgs.req)
            (hsPkgs.rio)
            (hsPkgs.scrapbook)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-types)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }