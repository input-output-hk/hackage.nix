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
      specVersion = "0";
      identifier = {
        name = "Imlib";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cgibbard@gmail.com";
      author = "Cale Gibbard";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Haskell binding for Imlib 2";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."Imlib2") ];
      };
    };
  }