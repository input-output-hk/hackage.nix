{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "threadmanager"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "_Real World Haskell_, http://www.realworldhaskell.org/";
      homepage = "";
      url = "";
      synopsis = "(deprecated in favor of 'threads') Simple thread management";
      description = "This package is useful, but deprecated. In new code, please use\n<http://hackage.haskell.org/package/threads threads> instead.\n\nA simple thread management API inspired by the one in\n<http://book.realworldhaskell.org/read/concurrent-and-multicore-programming.html chapter 24 of Real World Haskell>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }