{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lhslatex"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "https://github.com/tvh/lhslatex";
      url = "";
      synopsis = "Tool for using pdflatex with .lhs files";
      description = "Tool for using pdflatex with .lhs files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lhslatex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.regex-posix)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }