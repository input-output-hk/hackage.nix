{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hedn-functor"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "";
      url = "";
      synopsis = "Base functor for EDN AST";
      description = "Functor encoding for recursion schemes.\n\nMini-tutorial is available on package page: <https://dpwiz.gitlab.io/hedn/05-BaseFunctor.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hedn)
          (hsPkgs.recursion-schemes)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      };
    }