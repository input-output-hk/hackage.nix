{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sec"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Steffen Siering <steffen dot siering -> gmail.com>";
      author = "Steffen Siering <steffen dot siering -> gmail.com>";
      homepage = "http://github.com/urso/sec";
      url = "";
      synopsis = "Semantic Editor Combinators.";
      description = "Semantic Editor Combinators as described by Conal Elliott\n(See: <http://conal.net/blog/posts/semantic-editor-combinators/>)\nand Template Haskell support for automatically creating semantic\neditor combinators from Algebraic Data Types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }