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
      specVersion = "1.8";
      identifier = {
        name = "hdiscount";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamiet@gmail.com";
      author = "Jamie Turner";
      homepage = "https://github.com/jamwt/hdiscount";
      url = "";
      synopsis = "Haskell bindings to the Discount markdown library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."markdown") ];
      };
    };
  }