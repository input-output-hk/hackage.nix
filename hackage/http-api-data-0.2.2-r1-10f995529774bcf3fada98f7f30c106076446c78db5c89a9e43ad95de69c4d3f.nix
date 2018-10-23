{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      use-text-show = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "http-api-data";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nickolay Kudasov <nickolay.kudasov@gmail.com>";
      author = "Nickolay Kudasov <nickolay.kudasov@gmail.com>";
      homepage = "http://github.com/fizruk/http-api-data";
      url = "";
      synopsis = "Converting to/from HTTP API data like URL pieces, headers and query parameters.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "http-api-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
        ] ++ pkgs.lib.optional (flags.use-text-show) (hsPkgs.text-show);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.http-api-data)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }