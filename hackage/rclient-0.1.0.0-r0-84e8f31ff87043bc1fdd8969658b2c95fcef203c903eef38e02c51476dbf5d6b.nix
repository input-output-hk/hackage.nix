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
      specVersion = "1.2";
      identifier = {
        name = "rclient";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "TomDoris <tomdoris@gmail.com>";
      author = "TomDoris <tomdoris@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell client for Rserve";
      description = "This module allows you to issue R commands from Haskell to be executed via Rserve and get the results back in Haskell data types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.QuickCheck)
          (hsPkgs.split)
          (hsPkgs.data-binary-ieee754)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }