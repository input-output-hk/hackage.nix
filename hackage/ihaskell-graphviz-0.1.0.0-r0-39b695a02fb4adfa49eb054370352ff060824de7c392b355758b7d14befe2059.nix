{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "ihaskell-graphviz"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Lucas DiCioccio <lucas@dicioccio.fr>,\nVaibhav Sagar <vaibhavsagar@gmail.com>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Lucas DiCioccio <lucas@dicioccio.fr>";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instance for GraphViz (external binary)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."ihaskell" or ((hsPkgs.pkgs-errors).buildDepError "ihaskell"))
          ];
        buildable = true;
        };
      };
    }