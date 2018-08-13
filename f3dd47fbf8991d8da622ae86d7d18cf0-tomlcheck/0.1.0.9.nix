{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      optimize = false;
      native = false;
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "tomlcheck";
        version = "0.1.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/tomlcheck#readme";
      url = "";
      synopsis = "Command-line tool to check syntax of TOML files";
      description = "This is a command-line wrapper around htoml-megaparsec.\nIt is intended to be used as a syntax checker that can be\ncalled by your text editor.";
      buildType = "Simple";
    };
    components = {
      "tomlcheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.htoml-megaparsec)
          (hsPkgs.optparse-generic)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
        ];
      };
      exes = {
        "tomlcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tomlcheck)
          ];
        };
      };
    };
  }