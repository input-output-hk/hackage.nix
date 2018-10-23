{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yahoo-finance-api";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com, mchaver@gmail.com";
      author = "Dennis Gosnell, James M.C. Haver II";
      homepage = "https://github.com/cdepillabout/yahoo-finance-api";
      url = "";
      synopsis = "Read quotes from Yahoo Finance API.";
      description = "Haskell wrapper for the stock APIs provided by Yahoo Finance.\n\n__UPDATE__: It appears that yahoo disabled the quote API used by this\npakcage.  This package is no longer usable.  See\n<https://github.com/cdepillabout/yahoo-finance-api/issues/5 this issue>.";
      buildType = "Simple";
    };
    components = {
      "yahoo-finance-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.either)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "yahoo-finance-api-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.hspec)
            (hsPkgs.yahoo-finance-api)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.mtl)
            (hsPkgs.safe)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
          ];
        };
        "yahoo-finance-api-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }