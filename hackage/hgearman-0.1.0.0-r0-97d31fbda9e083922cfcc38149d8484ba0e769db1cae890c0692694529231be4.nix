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
        name = "hgearman";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2015, Jason Pesron";
      maintainer = "jrperson@gmail.com";
      author = "Jason Person";
      homepage = "";
      url = "";
      synopsis = "A Gearman client for Haskell.";
      description = "Gearman client for Haskell (not reccomended for production use).";
      buildType = "Simple";
    };
    components = {
      "hgearman" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.resource-pool)
        ];
      };
    };
  }