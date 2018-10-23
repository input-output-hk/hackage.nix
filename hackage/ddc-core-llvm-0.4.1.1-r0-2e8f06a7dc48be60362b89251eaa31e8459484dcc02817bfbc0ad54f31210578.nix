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
        name = "ddc-core-llvm";
        version = "0.4.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler LLVM code generator.";
      description = "Disciplined Disciple Compiler LLVM code generator.";
      buildType = "Simple";
    };
    components = {
      "ddc-core-llvm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.ddc-base)
          (hsPkgs.ddc-core)
          (hsPkgs.ddc-core-simpl)
          (hsPkgs.ddc-core-salt)
        ];
      };
    };
  }