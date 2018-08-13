{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      old-base = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "greencard";
        version = "3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Alastair Reid <alastair@reid-consulting-uk.ltd.uk>, Sigbjorn Finne <sof@forkIO.com>, Thomas Nordin.";
      homepage = "";
      url = "";
      synopsis = "GreenCard, a foreign function pre-processor for Haskell.";
      description = "GreenCard, a foreign function pre-processor for Haskell.";
      buildType = "Simple";
    };
    components = {
      "greencard" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "greencard" = {
          depends  = if _flags.old-base
            then [ (hsPkgs.base) ]
            else [
              (hsPkgs.base)
              (hsPkgs.haskell98)
              (hsPkgs.pretty)
              (hsPkgs.containers)
              (hsPkgs.array)
            ];
        };
      };
    };
  }