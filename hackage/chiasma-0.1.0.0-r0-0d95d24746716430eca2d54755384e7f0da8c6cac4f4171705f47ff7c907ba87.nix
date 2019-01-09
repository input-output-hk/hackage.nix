{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chiasma"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/chiasma-hs#readme";
      url = "";
      synopsis = "tmux api";
      description = "Please see the README on GitHub at <https://github.com/tek/chiasma-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.posix-pty)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.typed-process)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          ];
        };
      tests = {
        "chiasma-unit" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chiasma)
            (hsPkgs.data-default-class)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.posix-pty)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.split)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.unix)
            (hsPkgs.unliftio)
            ];
          };
        };
      };
    }