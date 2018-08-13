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
        name = "compact-socket";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "Socket functions for compact normal form.";
      description = "A sample implementation of transmitting compact normal forms over sockets.  Needs a custom version of GHC, see https://github.com/gcampax/ghc/releases";
      buildType = "Simple";
    };
    components = {
      "compact-socket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.compact)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.network)
          (hsPkgs.unix)
        ];
      };
    };
  }