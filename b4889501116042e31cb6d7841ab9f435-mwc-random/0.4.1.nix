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
        name = "mwc-random";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://darcs.serpentine.com/mwc-random";
      url = "";
      synopsis = "Fast, high quality pseudo random numbers";
      description = "Fast, high quality pseudo random numbers.";
      buildType = "Simple";
    };
    components = {
      "mwc-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.uvector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }