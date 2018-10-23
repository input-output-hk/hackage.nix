{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hcheat";
        version = "2008.11.25";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hcheat/";
      url = "";
      synopsis = "A collection of code cheatsheet";
      description = "Starting with Google Analytics";
      buildType = "Simple";
    };
    components = {
      "hcheat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mps)
        ];
      };
    };
  }