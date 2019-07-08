{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "AspectAG"; version = "0.5.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García Garland, Marcos Viera";
      homepage = "http://www.fing.edu.uy/~jpgarcia/AspectAG";
      url = "";
      synopsis = "Strongly typed Attribute Grammars implemented using type-level programming.";
      description = "An EDSL implementing strongly typed -and strongly kinded!- attribute grammars\nusing type-level programming. We make an effort to encode precise EDSL\ntype errors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.th-strict-compat)
          (hsPkgs.mtl)
          (hsPkgs.ghc-prim)
          ];
        };
      };
    }