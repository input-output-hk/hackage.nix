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
        name = "acme-hq9plus";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "http://github.com/joeyadams/haskell-acme-hq9plus";
      url = "";
      synopsis = "An embedded DSL for the HQ9+ programming language";
      description = "";
      buildType = "Simple";
    };
    components = {
      "acme-hq9plus" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }