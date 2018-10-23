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
        name = "ddc-core-salt";
        version = "0.4.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler C code generator.";
      description = "Disciplined Disciple Compiler C code generator.";
      buildType = "Simple";
    };
    components = {
      "ddc-core-salt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.ddc-core)
        ];
      };
    };
  }