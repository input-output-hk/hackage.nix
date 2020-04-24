{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "coalpit"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "defanor@uberspace.net";
      author = "defanor";
      homepage = "";
      url = "";
      synopsis = "Command-line options and DSV parsing and printing";
      description = "This library generates parsers and printers for\ngiven data types, in the form of command-line\narguments or DSVs – so that they can be used to\nquickly get CLIs via a shared library, while\nbeing suitable for scripting and as user\ninterfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          ];
        buildable = true;
        };
      tests = {
        "test-coalpit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."coalpit" or ((hsPkgs.pkgs-errors).buildDepError "coalpit"))
            (hsPkgs."generic-random" or ((hsPkgs.pkgs-errors).buildDepError "generic-random"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-travis" or ((hsPkgs.pkgs-errors).buildDepError "tasty-travis"))
            ];
          buildable = true;
          };
        };
      };
    }