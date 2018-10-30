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
      specVersion = "1.14";
      identifier = {
        name = "hermit";
        version = "0.1.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andrew Farmer, Andy Gill, Ed Komp, Neil Sculthorpe";
      homepage = "";
      url = "";
      synopsis = "Haskell Equational Reasoning Model-to-Implementation Tunnel";
      description = "HERMIT uses Haskell to express semi-formal models,\nefficient implementations, and provide a bridging DSL\nto describe via stepwise refinement the connection between\nthese models and implementations. The key transformation\nin the bridging DSL is the worker/wrapper transformation.\n\nThis is a pre-alpha `please give feedback' release.\nShortcomings/gotchas include:\n\n* Command line completion is ad hoc at the moment.\n\n* Parser needs to be reimplemented with a parsing library.\n\n* log command prints linearly, even if command history is a tree.\n\n* The fold rewrite can only fold syntactically alpha-equivalent (up to\nparameters of the function you are folding) expressions.\n\n* RULES have issues with forall types.\n\n* Different core comes out depending on whether you ascribe explicit\ntype signatures.\n\n* A number of rewrites don't enforce preconditions. ex: cast elimination\nalways works, even if the cast is necessary\n\nExamples can be found in the examples sub-directory.\n\n@\n\$ cd examples/reverse\n@\n\nExample of running a script.\n\n@\n\$ hermit Reverse.hs Reverse.hss resume\n[starting HERMIT v0.1.6.0 on Reverse.hs]\n% ghc Reverse.hs -fforce-recomp -O2 -dcore-lint -fsimple-list-literals -fplugin=HERMIT -fplugin-opt=HERMIT:main:Main: -fplugin-opt=HERMIT:main:Main:resume\n[1 of 2] Compiling HList            ( HList.hs, HList.o )\nLoading package ghc-prim ... linking ... done.\n...\nLoading package hermit-0.1.6.0 ... linking ... done.\n[2 of 2] Compiling Main             ( Reverse.hs, Reverse.o )\nLinking Reverse ...\n\$ ./Reverse\n....\n@\n\nExample of interactive use.\n\n@\n\$ hermit Reverse.hs\n[starting HERMIT v0.1.6.0 on Reverse.hs]\n% ghc Reverse.hs -fforce-recomp -O2 -dcore-lint -fsimple-list-literals -fplugin=HERMIT -fplugin-opt=HERMIT:main:Main:\n[1 of 2] Compiling HList            ( HList.hs, HList.o )\nLoading package ghc-prim ... linking ... done.\n...\nLoading package hermit-0.1.6.0 ... linking ... done.\n[2 of 2] Compiling Main             ( Reverse.hs, Reverse.o )\nmodule main:Main where\n\\ \\ rev ∷ ∀ a . [] a -> [] a\n\\ \\ unwrap ∷ ∀ a . ([] a -> [] a) -> [] a -> H a\n\\ \\ wrap ∷ ∀ a . ([] a -> H a) -> [] a -> [] a\n\\ \\ main ∷ IO ()\n\\ \\ main ∷ IO ()\nhermit\\<0\\>\n...\n@\n\nTo resume compile, use resume.\n\n@\n...\nhermit\\<0\\> resume\nhermit\\<0\\> Linking Reverse ...\n\$\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.ghc)
          (hsPkgs.haskeline)
          (hsPkgs.kure)
          (hsPkgs.marked-pretty)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hermit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }