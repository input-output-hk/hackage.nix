{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll-typescript"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jim McStanton";
      maintainer = "jim@jhmcstanton.com";
      author = "Jim McStanton";
      homepage = "https://github.com/jhmcstanton/hakyll-typescript#readme";
      url = "";
      synopsis = "Typescript and javascript hakyll compilers.";
      description = "Provides typescript to javascript hakyll compilers and a\njs minifying hakyll compiler. This is a simple wrapper\naround other common utilities found in hakyll projects,\nparticularly `hjsmin`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          (hsPkgs."hjsmin" or ((hsPkgs.pkgs-errors).buildDepError "hjsmin"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "test-hakyll-typescript" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."hakyll-typescript" or ((hsPkgs.pkgs-errors).buildDepError "hakyll-typescript"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }