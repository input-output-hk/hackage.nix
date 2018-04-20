{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hermit-syb";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Farmer <afarmer@ittc.ku.edu>";
        author = "Michael D. Adams and Andrew Farmer";
        homepage = "";
        url = "";
        synopsis = "HERMIT plugin for optimizing Scrap-Your-Boilerplate traversals.";
        description = "A HERMIT plugin for GHC which optimizes SYB generic traversals to achieve equivalent performance to hand-written traversals.\n\nDetails can be found in the paper: <http://michaeldadams.org/papers/syb-opt/>\n\nNote: This compiler plugin requires GHC 7.8 (or HEAD) and specially compiled copies of base, ghc-prim, and syb.\nUp-to-date instructions can be found at: <https://github.com/ku-fpg/hermit/wiki/GHC-HEAD>. We are working to\nlift these requirements.\n\nAs an example, we apply the optimization to Foo.hs, which contains the following code:\n\n@\nmodule Main where\n\nimport Data.Generics\nimport HERMIT.Optimization.SYB.Prelude\n\nmain :: IO ()\nmain = print (mapInt (+1) [1..10])\n\nmapInt :: (Int -> Int) -> [Int] -> [Int]\nmapInt f = everywhere (mkT f)\n@\n\nNote that importing @HERMIT.Optimization.SYB.Prelude@ is required in any module targeted for optimization.\n\nTo compile Foo.hs with the optimization:\n\n@\n\$ hermit Foo.hs -opt=HERMIT.Optimization.SYB +Main mapInt\n@\n\nThis invokes GHC with a specific set of flags. These flags may be used instead of the 'hermit' program itself, or placed in a cabal file.\n\nThe first argument to HERMIT is the target file. Next is the -opt flag, which specifies the plugin name.\nThen follows one or more target module names, each beginning with a plus sign. After each target module is a list of targeted functions.\nThe distinguished 'interactive' target will run the optimization on any other targets and then enter the HERMIT interactive shell.\nThe distinguished 'interactive-only' target will open the HERMIT shell before optimization.\nHERMIT commands specific to this optimization are available for interactive use.";
        buildType = "Simple";
      };
      components = {
        hermit-syb = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-prim
            hsPkgs.hermit
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.containers
          ];
        };
      };
    }