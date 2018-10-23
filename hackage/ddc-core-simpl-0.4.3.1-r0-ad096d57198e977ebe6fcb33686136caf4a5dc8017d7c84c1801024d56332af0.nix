{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ddc-core-simpl";
        version = "0.4.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler code transformations.";
      description = "Disciplined Disciple Compiler code transformations.";
      buildType = "Simple";
    };
    components = {
      "ddc-core-simpl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.ddc-core)
        ];
      };
    };
  }