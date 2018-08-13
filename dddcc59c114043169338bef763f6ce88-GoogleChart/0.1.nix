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
      specVersion = "1.2";
      identifier = {
        name = "GoogleChart";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Evan Martin <martine@danga.com>";
      maintainer = "martine@danga.com";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/browse/?r=google-chart;a=summary";
      url = "";
      synopsis = "Generate web-based charts using the Google Chart API";
      description = "";
      buildType = "Custom";
    };
    components = {
      "GoogleChart" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }