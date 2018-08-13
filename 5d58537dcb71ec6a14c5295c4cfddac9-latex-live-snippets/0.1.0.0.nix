{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "latex-live-snippets";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/latex-live-snippets#readme";
      url = "";
      synopsis = "Automatically inline Haskell snippets into LaTeX documents.";
      description = "Please see the README on GitHub at <https://github.com/isovector/latex-live-snippets#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "latex-live-snippets" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }