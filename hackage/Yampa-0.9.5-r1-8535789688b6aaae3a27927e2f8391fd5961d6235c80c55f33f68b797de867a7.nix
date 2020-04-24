{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Yampa"; version = "0.9.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez (ivan.perez@keera.co.uk)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/haskellwiki/Yampa";
      url = "";
      synopsis = "Library for programming hybrid systems.";
      description = "Domain-specific language embedded in Haskell for programming\nhybrid (mixed discrete-time and continuous-time) systems. Yampa is based on\nthe concepts of Functional Reactive Programming (FRP) and is structured using\narrow combinators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }