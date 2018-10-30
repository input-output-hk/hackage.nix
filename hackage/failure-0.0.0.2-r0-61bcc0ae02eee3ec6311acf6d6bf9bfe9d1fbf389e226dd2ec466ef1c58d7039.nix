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
      specVersion = "1.6";
      identifier = {
        name = "failure";
        version = "0.0.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/snoyberg/failure";
      url = "";
      synopsis = "A simple type class for success/failure computations.";
      description = "A simple type class for success/failure computations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }