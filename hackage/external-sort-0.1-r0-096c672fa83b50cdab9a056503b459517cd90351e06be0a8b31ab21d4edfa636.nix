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
        name = "external-sort";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Ben Midfield";
      homepage = "";
      url = "";
      synopsis = "Sort large arrays on your hard drive. Kind of like the unix util sort.";
      description = "Sort arrays too large to fit in ram, by using your hard drive.";
      buildType = "Simple";
    };
    components = {
      "external-sort" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.EdisonCore)
          (hsPkgs.EdisonAPI)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }