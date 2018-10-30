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
      specVersion = "1.16";
      identifier = {
        name = "ihaskell-gnuplot";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Doro Rose <dororose@hotmail.com>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Doro Rose <dororose@hotmail.com>";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instance for Gnuplot (from gnuplot package)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.gnuplot)
          (hsPkgs.ihaskell)
        ];
      };
    };
  }