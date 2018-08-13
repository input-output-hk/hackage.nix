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
        name = "hinfo";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christopher Davenport";
      maintainer = "Chris@ChristopherDavenport.com";
      author = "Christopher Davenport";
      homepage = "https://github.com/ChristopherDavenport/hinfo#readme";
      url = "";
      synopsis = "Command Line App With Info on your Haskell App";
      description = "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>";
      buildType = "Simple";
    };
    components = {
      "hinfo" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "hinfo" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hinfo)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "hinfo-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hinfo)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }