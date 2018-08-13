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
        name = "ihaskell-widgets";
        version = "0.2.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Sumit Sahrawat <sumit.sahrawat.apm13@iitbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Sumit Sahrawat";
      homepage = "http://www.github.com/gibiansky/IHaskell";
      url = "";
      synopsis = "IPython standard widgets for IHaskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ihaskell-widgets" = {
        depends  = (([
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ipython-kernel)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vinyl)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.unix)
          (hsPkgs.ihaskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10.2") (hsPkgs.singletons)) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.eq "7.10.1") [
          (hsPkgs.singletons)
          (hsPkgs.nats)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.10.1") [
          (hsPkgs.singletons)
          (hsPkgs.nats)
        ];
      };
    };
  }