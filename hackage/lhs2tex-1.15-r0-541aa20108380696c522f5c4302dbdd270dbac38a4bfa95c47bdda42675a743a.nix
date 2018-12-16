{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "lhs2tex";
        version = "1.15";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andres Loeh <lhs2tex@andres-loeh.de>";
      author = "Ralf Hinze <ralf@informatik.uni-bonn.de>, Andres Loeh <lhs2tex@andres-loeh.de>";
      homepage = "http://www.andres-loeh.de/lhs2tex/";
      url = "";
      synopsis = "Preprocessor for typesetting Haskell sources with LaTeX";
      description = "Preprocessor for typesetting Haskell sources with LaTeX";
      buildType = "Custom";
    };
    components = {
      exes = {
        "lhs2TeX" = {
          depends = if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.regex-compat)
              (hsPkgs.mtl)
              (hsPkgs.filepath)
              (hsPkgs.directory)
              (hsPkgs.process)
              (hsPkgs.utf8-string)
              (hsPkgs.extensible-exceptions)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.regex-compat)
              (hsPkgs.mtl)
              (hsPkgs.filepath)
              (hsPkgs.utf8-string)
            ];
        };
      };
    };
  }