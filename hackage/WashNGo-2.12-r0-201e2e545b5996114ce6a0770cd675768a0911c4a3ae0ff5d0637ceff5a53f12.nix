{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "WashNGo"; version = "2.12"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2001-2006, Peter Thiemann";
      maintainer = "Marc Weber <marco-oweber@gmx.de>";
      author = "Peter Thiemann <thiemann@informatik.uni-freiburg.de>";
      homepage = "http://www.informatik.uni-freiburg.de/~thiemann/haskell/WASH/";
      url = "";
      synopsis = "WASH is a family of embedded domain specific languages (EDSL) for programming Web applications in Haskell.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "wash2hs" = { buildable = true; };
        "washc" = {
          depends = [
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }