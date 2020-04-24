{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "remote-debugger"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kurbatsky@gmail.com";
      author = "";
      homepage = "https://github.com/octomarat/HaskellDebugger";
      url = "";
      synopsis = "Interface to ghci debugger";
      description = "Wraper to GHC debugger API allowing debugging throught socket. Used in haskell-idea-plugin.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "remote-debugger" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            ];
          buildable = true;
          };
        };
      };
    }