{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "sbvPlugin"; version = "0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/sbvPlugin";
      url = "";
      synopsis = "Formally prove properties of Haskell programs using SBV/SMT";
      description = "GHC plugin for proving properties over Haskell functions using SMT solvers, based\non the <http://hackage.haskell.org/package/sbv SBV> package.\n\nSee \"Data.SBV.Plugin\" for a quick example, or the modules under 'Data.SBV.Plugin.Examples'\nfor more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.sbv)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "sbvPluginTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sbvPlugin)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }