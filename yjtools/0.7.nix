{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yjtools";
          version = "0.7";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo";
        homepage = "http://homepage3.nifty.com/salamander/second/projects/yjtools/index.xhtml";
        url = "http://code.haskell.org/yjtools/";
        synopsis = "some tools for Monad, List, Tuple and so on.";
        description = "ifM, whenM, unlessM, doWhile, doWhile_ and so on.";
        buildType = "Simple";
      };
      components = {
        yjtools = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.regexpr
          ];
        };
      };
    }