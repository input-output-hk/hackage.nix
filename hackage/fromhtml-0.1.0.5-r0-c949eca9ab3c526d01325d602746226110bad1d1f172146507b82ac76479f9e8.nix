{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fromhtml";
        version = "0.1.0.5";
      };
      license = "MIT";
      copyright = "2018 Marek Suchánek";
      maintainer = "marek.suchanek@fit.cvut.cz";
      author = "Marek Suchánek";
      homepage = "https://github.com/MarekSuchanek/FromHTML#readme";
      url = "";
      synopsis = "Simple adapter for transformation of HTML to other formats";
      description = "Please see the README on GitHub at <https://github.com/MarekSuchanek/FromHTML#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      exes = {
        "fromhtml" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fromhtml)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }