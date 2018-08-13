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
      specVersion = "1.8";
      identifier = {
        name = "sscgi";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jekor@jekor.com";
      author = "Chris Forno (jekor)";
      homepage = "https://github.com/jekor/haskell-sscgi";
      url = "";
      synopsis = "Simple SCGI Library";
      description = "This is a simple implementation of the SCGI protocol without support for the Network.CGI interface. It's still rough but currently powers www.vocabulink.com and jekor.com.";
      buildType = "Simple";
    };
    components = {
      "sscgi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.Glob)
          (hsPkgs.mtl)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }