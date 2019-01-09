{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-typegraph"; version = "0.33"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Fox";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/th-typegraph";
      url = "";
      synopsis = "Graph of the subtype relation";
      description = "Build a graph whose nodes are Types and whose edges represent\nthe subtype relation: Char is a subtype of Maybe Char, Int is\na subtype of (Int, Double), and so on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.mtl)
          (hsPkgs.mtl-unleashed)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.th-desugar)
          (hsPkgs.th-orphans)
          ] ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.microlens-compat) ]
          else [ (hsPkgs.lens) ]);
        };
      tests = {
        "th-typegraph-tests" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.mtl)
            (hsPkgs.mtl-unleashed)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-typegraph)
            (hsPkgs.th-desugar)
            (hsPkgs.th-orphans)
            (hsPkgs.th-reify-many)
            ] ++ (if compiler.isGhcjs && true
            then [ (hsPkgs.microlens-compat) ]
            else [ (hsPkgs.lens) ]);
          };
        };
      };
    }