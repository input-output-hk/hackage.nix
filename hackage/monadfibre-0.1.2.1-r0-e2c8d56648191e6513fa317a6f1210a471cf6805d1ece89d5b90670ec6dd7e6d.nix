{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "monadfibre"; version = "0.1.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/monadfibre";
      url = "";
      synopsis = "Monadic functions which provide Choice and Parallelism.";
      description = "This package defines Monadic functions which provide Choice and Parallelism - (&lt;||&rt;) and (&lt;&&&rt;)\n- that work on Monads that provide a (MonadBi m IO) instance.\nDepends on the @monadbi@ library for extracting the IO actions from m. Also provides a good example of how to use the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monadbi" or ((hsPkgs.pkgs-errors).buildDepError "monadbi"))
          ];
        buildable = true;
        };
      };
    }