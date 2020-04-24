{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspec-discover"; version = "2.1.10"; };
      license = "MIT";
      copyright = "(c) 2012-2015 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Automatically discover and run Hspec tests";
      description = "Automatically discover and run Hspec tests\n\n<http://hspec.github.io/hspec-discover.html>";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "hspec-discover" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec-meta" or ((hsPkgs.pkgs-errors).buildDepError "hspec-meta"))
            ];
          buildable = true;
          };
        };
      };
    }