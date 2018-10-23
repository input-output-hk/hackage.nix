{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "ihaskell-plot";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Sumit Sahrawat <sumit.sahrawat.apm13@itbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Sumit Sahrawat <sumit.sahrawat.apm13@itbhu.ac.in>";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instance for Plot (from plot package)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ihaskell-plot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.plot)
          (hsPkgs.bytestring)
          (hsPkgs.ihaskell)
        ];
      };
    };
  }