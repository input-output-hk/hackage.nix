{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aeson-filthy";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alec@deviant-logic.net";
      author = "Alec Heller";
      homepage = "https://github.com/deviant-logic/aeson-filthy";
      url = "";
      synopsis = "Several newtypes and combinators for dealing with less-than-cleanly JSON input.";
      description = "A little library of newtypes to help with parsing indiscriminately encoded JSON.";
      buildType = "Simple";
    };
    components = {
      "aeson-filthy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }