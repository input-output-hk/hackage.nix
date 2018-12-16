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
        name = "swagger-test";
        version = "0.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Rodrigo Setti. All rights reserved";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "https://github.com/rodrigosetti/swagger-test";
      url = "";
      synopsis = "Testing of Swagger APIs";
      description = "This package provides a library and executable tool\nthat supports testing APIs specified with Swagger. It\nallows one to generate arbitrary Swagger requests for any\ngiven specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.random)
          (hsPkgs.scientific)
          (hsPkgs.swagger2)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "swagger-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.swagger-test)
            (hsPkgs.swagger2)
            (hsPkgs.text)
          ];
        };
      };
    };
  }