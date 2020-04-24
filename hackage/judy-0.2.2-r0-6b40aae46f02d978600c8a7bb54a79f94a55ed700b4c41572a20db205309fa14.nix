{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafe = false; };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "judy"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/judy";
      url = "";
      synopsis = "Fast, scalable, mutable dynamic arrays, maps and hashes";
      description = "Fast, scalable, mutable dynamic arrays, maps and hashes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."Judy" or ((hsPkgs.pkgs-errors).sysDepError "Judy")) ];
        buildable = true;
        };
      };
    }