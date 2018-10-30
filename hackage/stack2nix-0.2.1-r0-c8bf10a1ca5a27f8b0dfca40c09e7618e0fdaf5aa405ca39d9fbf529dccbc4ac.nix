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
        version = "0.2.1";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.async)
          (hsPkgs.cabal2nix)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.distribution-nixpkgs)
          (hsPkgs.filepath)
          (hsPkgs.hackage-db)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pretty)
          (hsPkgs.path)
          (hsPkgs.language-nix)
          (hsPkgs.lens)
          (hsPkgs.process)
          (hsPkgs.regex-pcre)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.stack)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "stack2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.stack2nix)
            (hsPkgs.optparse-applicative)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.stack2nix)
          ];
        };
      };
    };
  }