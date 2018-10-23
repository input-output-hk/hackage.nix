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
        name = "BCMtools";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Big Contact Map Tools";
      description = "";
      buildType = "Simple";
    };
    components = {
      "BCMtools" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.colour)
          (hsPkgs.data-default-class)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          (hsPkgs.matrices)
        ];
      };
      exes = {
        "bcmtools" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.BCMtools)
            (hsPkgs.binary)
            (hsPkgs.optparse-applicative)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.split)
            (hsPkgs.data-default-class)
          ];
        };
      };
    };
  }