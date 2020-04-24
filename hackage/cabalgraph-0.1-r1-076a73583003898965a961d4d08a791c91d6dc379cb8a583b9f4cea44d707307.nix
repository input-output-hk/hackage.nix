{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cabalgraph"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cabalgraph";
      url = "";
      synopsis = "Generate pretty graphs of module trees from cabal files";
      description = "Generate pretty graphs of module trees from cabal files\n\nGraph exposed modules from .cabal files in some directories:\n\n>   \$ cabalgraph a b c d | dot -Tpng | xv -\n\nResults in a graph like: <http://code.haskell.org/~dons/images/dot.png>\n\nGraph exposed modules from a url:\n\n>   \$ cabalgraph http://code.haskell.org/xmonad/xmonad.cabal | circo -Tpng | xv -\n\nResults in a graph like: <http://code.haskell.org/~dons/images/xmonad-dot.png>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabalgraph" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }