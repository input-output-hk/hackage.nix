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
        name = "oanda-rest-api";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016 John David Reaver";
      maintainer = "johndreaver@gmail.com";
      author = "John David Reaver";
      homepage = "https://github.com/jdreaver/oanda-rest-api#readme";
      url = "";
      synopsis = "Client to the OANDA REST API";
      description = "Client to the OANDA REST API";
      buildType = "Simple";
    };
    components = {
      "oanda-rest-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.Decimal)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.resourcet)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "style" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.Decimal)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.resourcet)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.hlint)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.Decimal)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.resourcet)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.oanda-rest-api)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }