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
        name = "bittrex";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© David Johnson 2017-2018\n, © Remy Goldschmidt 2017-2018";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/bittrex";
      url = "";
      synopsis = "Bindings for the Bittrex API";
      description = "Haskell bindings to the Bittrex exchange";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-client-tls)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.scientific)
          (hsPkgs.SHA)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wreq)
          (hsPkgs.flow)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.bittrex)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.turtle)
          ];
        };
      };
    };
  }