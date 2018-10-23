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
        name = "textocat-api";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2015 Mansur Ziatdinov";
      maintainer = "mz@fosslabs.ru";
      author = "Mansur Ziatdinov";
      homepage = "https://github.com/gltronred/textocat-api-haskell";
      url = "";
      synopsis = "Unofficial Haskell SDK for Textocat API -- http://textocat.com";
      description = "Unofficial Haskell SDK for Textocat API -- http://textocat.com\n\nTextocat is \"catalyst of text analytics\". It focuses on Russian texts, mainly news";
      buildType = "Simple";
    };
    components = {
      "textocat-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "simple-io-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.textocat-api)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }