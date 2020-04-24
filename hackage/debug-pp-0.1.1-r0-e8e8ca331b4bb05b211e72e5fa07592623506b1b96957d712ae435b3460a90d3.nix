{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "debug-pp"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "https://github.com/pepeiborra/debug-hoed-pp#readme";
      url = "";
      synopsis = "A preprocessor for the debug package";
      description = "A preprocessor to automate the instrumentation of a module for the debug package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "debug-pp" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."debug-hoed" or ((hsPkgs.pkgs-errors).buildDepError "debug-hoed"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }