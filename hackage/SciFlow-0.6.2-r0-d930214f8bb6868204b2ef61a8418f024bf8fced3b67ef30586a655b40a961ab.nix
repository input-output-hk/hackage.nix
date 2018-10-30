{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { drmaa = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "SciFlow";
        version = "0.6.2";
      };
      license = "MIT";
      copyright = "(c) 2015-2018 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is a DSL for building scientific workflows.\nWorkflows built with SciFlow can be run either on desktop\ncomputers or in grid computing environments that\nsupport DRMAA.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.directory)
          (hsPkgs.data-default-class)
          (hsPkgs.exceptions)
          (hsPkgs.executable-path)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.lens)
          (hsPkgs.lifted-async)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.rainbow)
          (hsPkgs.sqlite-simple)
          (hsPkgs.split)
          (hsPkgs.th-lift)
          (hsPkgs.th-lift-instances)
          (hsPkgs.time)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
        ] ++ pkgs.lib.optional (flags.drmaa) (hsPkgs.drmaa);
      };
    };
  }