{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "editpipe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Brian McKenna";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "http://github.com/puffnfresh/editpipe#readme";
      url = "";
      synopsis = "Edit stdin using an editor before sending to stdout.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "editpipe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }