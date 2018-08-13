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
        name = "envelope";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/envelope#readme";
      url = "";
      synopsis = "Defines generic 'Envelope' type to wrap reponses from a JSON API.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "envelope" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
      tests = {
        "envelope-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }