{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "xhaskell-library"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Kenny Zhuo Ming Lu and Martin Sulzmann";
      maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
      author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
      homepage = "http://code.google.com/p/xhaskell-library/";
      url = "http://darcs.haskell.org/packages/regex-unstable/xhaskell-library";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "Regex algorithm implementation using partial derivatives";
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
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }