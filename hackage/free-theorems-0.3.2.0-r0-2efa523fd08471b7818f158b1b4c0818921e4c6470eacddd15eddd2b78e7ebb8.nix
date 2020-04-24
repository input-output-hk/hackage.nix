{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "free-theorems"; version = "0.3.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "voigt@tcs.inf.tu-dresden.de";
      author = "Sascha Boehme";
      homepage = "";
      url = "";
      synopsis = "Automatic generation of free theorems.";
      description = "The free-theorems library allows to automatically generate free\ntheorems from Haskell type expressions. It supports nearly all\nHaskell 98 types except of type constructor classes, and in\naddition it can also handle higher-rank functions. Free theorems\nare generated for three different sublanguages of Haskell, a\nbasic one corresponding to the polymorphic lambda-calculus of\nGirard-Reynolds, an extension of that allowing for recursion and\nerrors, and finally a sublanguage additionally allowing seq.\nIn the last two sublanguages, also inequational free theorems\nmay be derived in addition to classical equational results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }