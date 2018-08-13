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
      specVersion = "0";
      identifier = {
        name = "hsc2hs";
        version = "0.67.20061107";
      };
      license = "BSD-3-Clause";
      copyright = "2000, Marcin Kowalczyk";
      maintainer = "cvs-fptools@haskell.org";
      author = "Marcin Kowalczyk <qrczak@knm.org.pl>";
      homepage = "";
      url = "";
      synopsis = "A preprocessor that helps with writing Haskell bindings to C code";
      description = "The hsc2hs program can be used to automate some parts of the\nprocess of writing Haskell bindings to C code.\tIt reads an\nalmost-Haskell source file with embedded special constructs, and\noutputs a real Haskell file with these constructs processed, based\non information taken from some C headers.  The extra constructs\nprovide Haskell counterparts of C types, values of C constants,\nincluding sizes of C types, and access to fields of C structs.\n\nFor more details, see\nhttp://www.haskell.org/ghc/docs/latest/html/users_guide/hsc2hs.html";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hsc2hs" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }