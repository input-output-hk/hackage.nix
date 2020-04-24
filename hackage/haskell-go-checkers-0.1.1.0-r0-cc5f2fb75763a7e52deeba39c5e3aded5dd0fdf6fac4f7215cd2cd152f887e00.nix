{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-go-checkers"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "prateek@prateekkumar.in";
      author = "Prateek Kumar, Vaibhav Sinha";
      homepage = "https://github.com/prateekkumarweb/haskell-go-checkers";
      url = "";
      synopsis = "Go and Checkers game in Haskell";
      description = "This is an implementation fo Go and Checkers game in haskell using GLOSS for GUI.\nFor more rules of Go visit https://www.britgo.org/intro/intro2.html.\nFor more rules of Checkers visit https://www.thespruce.com/play-checkers-using-standard-rules-409287.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-go-checkers" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      };
    }