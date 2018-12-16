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
        name = "stack2nix";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jacob.mitchell@iohk.io";
      author = "Jacob Mitchell";
      homepage = "";
      url = "";
      synopsis = "Convert stack.yaml files into Nix build instructions.";
      description = "Convert stack.yaml files into Nix build instructions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.Glob)
          (hsPkgs.hnix)
          (hsPkgs.monad-parallel)
          (hsPkgs.process)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "stack2nix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.stack2nix)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }