{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-tree"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "https://github.com/pikajude/type-tree";
      url = "";
      synopsis = "Tree representations of datatypes";
      description = "@type-tree@ provides TH splices for generating tree representations of\nthe types contained in datatypes. This is useful for, for example,\ngenerating class instances for a deeply nested datatype.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
          (hsPkgs.zenc)
          ];
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }