{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "orizentic";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Savanni D'Gerinel";
      maintainer = "example@example.com";
      author = "Savanni D'Gerinel";
      homepage = "https://github.com/luminescent-dreams/orizentic#readme";
      url = "";
      synopsis = "Token-based authentication and authorization";
      description = "A library and CLI application for generating and validating authentication tokens and their accompanying database";
      buildType = "Simple";
    };
    components = {
      "orizentic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.jwt)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
        ];
      };
      exes = {
        "orizentic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.orizentic)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.jwt)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "orizentic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.orizentic)
            (hsPkgs.hspec)
            (hsPkgs.jwt)
            (hsPkgs.mtl)
            (hsPkgs.time)
          ];
        };
      };
    };
  }