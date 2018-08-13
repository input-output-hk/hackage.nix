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
      specVersion = "1.2";
      identifier = {
        name = "cabal-progdeps";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "quick@sparq.org";
      author = "Kevin Quick";
      homepage = "";
      url = "";
      synopsis = "Show dependencies of program being built in current directory";
      description = "This utility can be used to display the version dependency\ninformation for the program being built in the current directory.\nEssentially it parses the dist/setup-config and displays the\ninformation in a readable format.  This can be very helpful when\nadding version constraints to your package's dependencies in that it\nshows what your package is currently built (or configured to be\nbuilt) with.\n\nn.b. It's called \"progdeps\" instead of \"pkgdeps\" because it's\nexamining the build information in the current directory and not\nactual packages.\n\nUsage: cabal-progdeps\n\nWorks with cabal-dev and cabal.\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-progdeps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }