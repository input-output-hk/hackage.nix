{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mysql-haskell-nem";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 José Lorenzo Rodríguez";
      maintainer = "jose.zap@gmail.com";
      author = "José Lorenzo Rodríguez\n, Bryan O'Sullivan\n, Paul Rouse";
      homepage = "https://github.com/lorenzo/mysql-haskell-nem#readme";
      url = "";
      synopsis = "Adds a interface like mysql-simple to mysql-haskell.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "mysql-haskell-nem" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mysql-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.scientific)
          (hsPkgs.io-streams)
        ];
      };
    };
  }