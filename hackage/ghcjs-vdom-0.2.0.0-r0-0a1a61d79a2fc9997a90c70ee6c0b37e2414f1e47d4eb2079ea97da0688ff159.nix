{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-vdom"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "stegeman@gmail.com";
      author = "Luite Stegeman";
      homepage = "";
      url = "";
      synopsis = "Virtual-dom bindings for GHCJS";
      description = "Virtual-dom is a library for fast incremental DOM\nupdates by comparing virtual immutable DOM trees to\nfind a minimal number of changes to update the actual DOM.\nThe bindings support memoized nodes which are only\nrecomputed when the underlying data changes, using\nreferential equality for the function and arguments.\nThe diff procedure in the virtual-dom library has been\nmodified slightly to support computing a diff in an\nasynchronous thread. Since computing a diff forces all data\naround the virtual-dom tree, the computation, the computation\ncan be expensive.\nAn asynchronous diff computation can be safely aborted\nwith an async exception.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."ghcjs-ffiqq" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-ffiqq"))
          (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-prim"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "ghcjs-vdom-example-table" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-ffiqq" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-ffiqq"))
            (hsPkgs."ghcjs-vdom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-vdom"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "ghcjs-vdom-example-components" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-ffiqq" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-ffiqq"))
            (hsPkgs."ghcjs-vdom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-vdom"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "ghcjs-vdom-example-render" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-ffiqq" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-ffiqq"))
            (hsPkgs."ghcjs-vdom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-vdom"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }