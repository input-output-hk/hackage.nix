{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xlsx-templater"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "qrilka@gmail.com";
      author = "Kirill Zaborsky";
      homepage = "https://github.com/qrilka/xlsx-templater";
      url = "";
      synopsis = "Simple and incomplete Excel file templater";
      description = "Library for creating xlsx data files from xlsx tempaltes.";
      buildType = "Simple";
      };
    components = {
      "library" = {};
      exes = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.xlsx)
            (hsPkgs.data-default)
            (hsPkgs.conduit)
            (hsPkgs.parsec)
            (hsPkgs.time)
            ];
          };
        };
      };
    }