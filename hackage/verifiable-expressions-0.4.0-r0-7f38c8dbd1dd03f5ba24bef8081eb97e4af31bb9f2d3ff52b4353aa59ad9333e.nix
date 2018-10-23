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
        name = "verifiable-expressions";
        version = "0.4.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "bch29@cam.ac.uk";
      author = "Bradley Hardy";
      homepage = "";
      url = "";
      synopsis = "An intermediate language for Hoare logic style verification.";
      description = "A typed intermediate language for Hoare logic style verification. It defines the intermediate language and combinators to interact it.";
      buildType = "Simple";
    };
    components = {
      "verifiable-expressions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.sbv)
          (hsPkgs.transformers)
          (hsPkgs.union)
          (hsPkgs.vinyl)
        ];
      };
    };
  }