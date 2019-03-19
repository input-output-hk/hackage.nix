{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "miv"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "itchyny <https://github.com/itchyny>";
      author = "itchyny <https://github.com/itchyny>";
      homepage = "";
      url = "";
      synopsis = "Manage Vim plugins with command";
      description = "The miv command is a cli tool to manage Vim plugins.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "miv" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.process)
            (hsPkgs.async)
            (hsPkgs.concurrent-output)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.monad-parallel)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.monad-parallel)
            ];
          };
        };
      };
    }