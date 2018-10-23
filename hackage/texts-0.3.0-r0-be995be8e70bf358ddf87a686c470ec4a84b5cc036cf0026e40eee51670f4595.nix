{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "texts";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "User-facing operations for dealing with texts";
      description = "Common operations for different kinds of texts, including English-specific operations.";
      buildType = "Simple";
    };
    components = {
      "texts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.HUnit)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.lists)
        ];
      };
    };
  }