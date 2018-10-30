{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "ipython-kernel";
        version = "0.9.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://github.com/gibiansky/IHaskell";
      url = "";
      synopsis = "A library for creating kernels for IPython frontends";
      description = "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.temporary)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.SHA)
        ];
      };
      exes = {
        "simple-calc-example" = {
          depends  = [
            (hsPkgs.ipython-kernel)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "fun-calc-example" = {
          depends  = [
            (hsPkgs.ipython-kernel)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }