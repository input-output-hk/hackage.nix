{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heavy-logger-amazon"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 ILya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "https://github.com/portnov/heavy-logger-amazon#readme";
      url = "";
      synopsis = "heavy-logger compatibility with amazonka-core logging";
      description = "This package is a simple adapter for use of @amazonka@ package with @heavy-logger@.\n\n@Amazonka@ has it's own interface for logging. This package provides implementation of that interface by @heavy-logger@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."heavy-logger" or ((hsPkgs.pkgs-errors).buildDepError "heavy-logger"))
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          ];
        buildable = true;
        };
      };
    }