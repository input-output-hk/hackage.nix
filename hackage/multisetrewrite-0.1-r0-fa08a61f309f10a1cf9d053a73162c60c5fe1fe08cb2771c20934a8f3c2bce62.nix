{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "multisetrewrite"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin.sulzmann@gmail.com";
      author = "Martin Sulzmann";
      homepage = "http://sulzmann.blogspot.com/2008/10/multi-set-rewrite-rules-with-guards-and.html";
      url = "";
      synopsis = "Multi-set rewrite rules with guards and a parallel execution scheme";
      description = "Multi-set rewrite rules with guards and a parallel execution scheme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }