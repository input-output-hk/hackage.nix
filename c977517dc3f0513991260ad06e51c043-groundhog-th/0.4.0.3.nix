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
      specVersion = "1.6";
      identifier = {
        name = "groundhog-th";
        version = "0.4.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library helps to generate instances for Groundhog datatypes.";
      buildType = "Simple";
    };
    components = {
      "groundhog-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.groundhog)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.yaml)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }