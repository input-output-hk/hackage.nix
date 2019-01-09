{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "tomlcheck"; version = "0.1.0.29"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Command-line tool to check syntax of TOML files";
      description = "This is a command-line wrapper around htoml-megaparsec.\nIt is intended to be used as a syntax checker that can be\ncalled by your text editor.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tomlcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.optparse-generic)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }