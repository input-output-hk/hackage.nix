{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "const-math-ghc-plugin";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker, John Lato";
      homepage = "https://github.com/kfish/const-math-ghc-plugin";
      url = "";
      synopsis = "Compiler plugin for constant math elimination";
      description = "This plugin evaluates constant math expressions at compile-time.\n\nFor details and full usage information, see;\n\n<https://github.com/kfish/const-math-ghc-plugin>\n\nTo use it to compile /foo.hs/:\n\n@\n\$ cabal install const-math-ghc-plugin\n\$ ghc -fplugin ConstMath.Plugin foo.hs\n@\n\nTo use it to build a cabal package /packagename/:\n\n@\n\$ cabal install --ghc-options=\"-package const-math-ghc-plugin -fplugin ConstMath.Plugin\" packagename\n@\n\nMath should run faster.\n";
      buildType = "Simple";
    };
    components = {
      "const-math-ghc-plugin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }