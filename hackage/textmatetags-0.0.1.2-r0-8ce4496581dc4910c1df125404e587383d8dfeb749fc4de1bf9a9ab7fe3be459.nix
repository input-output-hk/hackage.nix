{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "textmatetags"; version = "0.0.1.2"; };
      license = "MIT";
      copyright = "(c) 2011 Alessandro Vermeulen <alessandro.vermeulen@me.com>";
      maintainer = "Alessandro Vermeulen <alessandro.vermeulen@me.com>";
      author = "Alessandro Vermeulen";
      homepage = "https://github.com/spockz/Haskell-Code-Completion-for-TextMate";
      url = "";
      synopsis = "A simple Haskell program to provide tags for Haskell code completion in TextMate";
      description = "A simple Haskell program to provide tags for Haskell code completion in TextMate";
      buildType = "Simple";
      };
    components = {
      exes = {
        "textmatetags" = {
          depends = [ (hsPkgs.base) (hsPkgs.haskell98) (hsPkgs.process) ];
          };
        };
      };
    }