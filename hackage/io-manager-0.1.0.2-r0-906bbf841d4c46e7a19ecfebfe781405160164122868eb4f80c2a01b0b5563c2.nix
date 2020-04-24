{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "io-manager"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mihai.maruseac@gmail.com";
      author = "Mihai Maruseac";
      homepage = "";
      url = "";
      synopsis = "Skeleton library around the IO monad.";
      description = "A skeleton library to help learners of Haskell\nconcentrate on the pure-functional aspect and\nlet the IO be handled by the library.";
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
      exes = {
        "SimpleEchoExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."io-manager" or ((hsPkgs.pkgs-errors).buildDepError "io-manager"))
            ];
          buildable = true;
          };
        };
      };
    }