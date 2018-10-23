{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "labels";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/labels#readme";
      url = "";
      synopsis = "Declare and access tuple fields with labels";
      description = "Declare and access tuple fields with labels.\nAn approach to anonymous records.";
      buildType = "Simple";
    };
    components = {
      "labels" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.cassava)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }