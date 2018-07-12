{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "greencard";
          version = "3.0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sof@forkIO.com>";
        author = "Alastair Reid <alastair@reid-consulting-uk.ltd.uk>, Sigbjorn Finne <sof@forkIO.com>, Thomas Nordin.";
        homepage = "https://github.com/sof/greencard";
        url = "";
        synopsis = "GreenCard, a foreign function pre-processor for Haskell.";
        description = "Green Card is a foreign function interface preprocessor for Haskell, simplifying the\ntask of interfacing Haskell programs to external libraries (which are normally\nexposed via C interfaces).\n\nTo interface to an external function using Green Card, you write a small procedure\nspecification. The specification tells Green Card what (Haskell) type you want to\ngive the function together with details of how the arguments (and results) to the\nHaskell function should be marshalled to and from the data representation used by\nthe external function. Green Card will then generate gobs of low-level boilerplate\ncode that takes care of all the details.\n\nFor an example of a simple GreenCard module, have a look at @examples\\/world\\/World.gc@\n\nAlong with the @greencard@ application binary, this package also supplies the @greencard@\nlibrary/package, consisting of the single module @Foreign.GreenCard@ containing the default\nGreenCard marshalling functions.";
        buildType = "Simple";
      };
      components = {
        "greencard" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "greencard" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.array
            ];
          };
        };
      };
    }