{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "travis-pogodi"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bushevdv@gmail.com";
      author = "Dmitry Bushev";
      homepage = "https://github.com/4e6/travis-pogodi#readme";
      url = "";
      synopsis = "A better travis_wait";
      description = "An alternative implementation of Travis CI @travis_wait@ script.\nTo surpass Travis no-output timeout @travis-pogodi@ regularly prints\nmessage to stdout.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "travis-pogodi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."travis-pogodi" or ((hsPkgs.pkgs-errors).buildDepError "travis-pogodi"))
            ];
          buildable = true;
          };
        };
      };
    }