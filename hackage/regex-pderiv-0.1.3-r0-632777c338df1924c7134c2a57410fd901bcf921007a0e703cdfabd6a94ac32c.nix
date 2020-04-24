{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "regex-pderiv"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2012, Kenny Zhuo Ming Lu and Martin Sulzmann";
      maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
      author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
      homepage = "http://code.google.com/p/xhaskell-library/";
      url = "http://darcs.haskell.org/packages/regex-unstable/xhaskell-library";
      synopsis = "Replaces/Enhances Text.Regex. Implementing regular expression matching using Antimirov's partial derivatives.";
      description = "Regex algorithm implementation using partial derivatives. The svn source also shipped with two other referential implementations, e.g. Thomspon NFA and Glushkov NFA. For more detail please check out http://code.google.com/p/xhaskell-library/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."bitset" or ((hsPkgs.pkgs-errors).buildDepError "bitset"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }