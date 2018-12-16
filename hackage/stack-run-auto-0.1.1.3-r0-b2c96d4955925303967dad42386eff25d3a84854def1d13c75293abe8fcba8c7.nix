{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stack-run-auto";
        version = "0.1.1.3";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "http://github.com/yamadapc/stack-run-auto#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.lens-aeson)
          (hsPkgs.lens)
          (hsPkgs.wreq)
          (hsPkgs.MissingH)
          (hsPkgs.stm-containers)
          (hsPkgs.async)
          (hsPkgs.extract-dependencies)
          (hsPkgs.file-modules)
        ];
      };
      exes = {
        "module-package" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.wreq)
            (hsPkgs.MissingH)
            (hsPkgs.stm-containers)
            (hsPkgs.async)
            (hsPkgs.extract-dependencies)
            (hsPkgs.file-modules)
            (hsPkgs.stack-run-auto)
          ];
        };
        "stack-run-auto" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.wreq)
            (hsPkgs.MissingH)
            (hsPkgs.stm-containers)
            (hsPkgs.async)
            (hsPkgs.extract-dependencies)
            (hsPkgs.file-modules)
            (hsPkgs.stack-run-auto)
          ];
        };
      };
      tests = {
        "stack-run-auto-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.wreq)
            (hsPkgs.MissingH)
            (hsPkgs.stm-containers)
            (hsPkgs.async)
            (hsPkgs.extract-dependencies)
            (hsPkgs.file-modules)
            (hsPkgs.stack-run-auto)
          ];
        };
      };
    };
  }