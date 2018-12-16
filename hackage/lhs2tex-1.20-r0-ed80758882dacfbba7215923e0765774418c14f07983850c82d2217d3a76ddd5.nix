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
        name = "lhs2tex";
        version = "1.20";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andres Loeh <lhs2tex@andres-loeh.de>";
      author = "Ralf Hinze <ralf.hinze@comlab.ox.ac.uk>, Andres Loeh <lhs2tex@andres-loeh.de>";
      homepage = "https://github.com/kosmikus/lhs2tex";
      url = "";
      synopsis = "Preprocessor for typesetting Haskell sources with LaTeX";
      description = "This tool is primarily intended for people who want to write articles\nor books using LaTeX that contain some Haskell code. It works on literate\nHaskell documents where the non-Haskell parts form essentially a valid\nLaTeX document, then processes the Haskell code in the document and\nreplaces it with formatted LaTeX output. It is not fully automatic in\nthe sense that it will turn an arbitrary literate Haskell document into\na LaTeX document without further work.\n\nNearly all aspects about the output and formatting are configurable.\nOutput of code can be made using proportional fonts in such a way that\neven complex horizontal alignment is preserved. The preprocessor can also\nbe invoked in another mode to just extract the Haskell code.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "lhs2TeX" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }