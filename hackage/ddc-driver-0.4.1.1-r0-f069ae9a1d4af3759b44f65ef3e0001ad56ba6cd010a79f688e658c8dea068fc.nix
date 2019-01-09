{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-driver"; version = "0.4.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler top-level driver.";
      description = "This defines the top-level commands supported by the compiler,\nsuch as @-make@ and @-compile@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.ddc-base)
          (hsPkgs.ddc-core)
          (hsPkgs.ddc-core-eval)
          (hsPkgs.ddc-core-simpl)
          (hsPkgs.ddc-core-salt)
          (hsPkgs.ddc-core-llvm)
          (hsPkgs.ddc-core-flow)
          (hsPkgs.ddc-core-tetra)
          (hsPkgs.ddc-source-tetra)
          (hsPkgs.ddc-build)
          (hsPkgs.ddc-interface)
          ];
        };
      };
    }