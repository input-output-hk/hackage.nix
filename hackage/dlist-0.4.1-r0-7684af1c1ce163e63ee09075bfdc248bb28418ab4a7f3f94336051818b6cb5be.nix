{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { applicative-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "dlist"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2006-7 Don Stewart";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/dlist/";
      url = "";
      synopsis = "Differences lists";
      description = "Differences lists: a list-like type supporting O(1) append.\nThis is particularly useful for efficient logging and pretty\nprinting, (e.g. with the Writer monad), where list append\nquickly becomes too expensive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }