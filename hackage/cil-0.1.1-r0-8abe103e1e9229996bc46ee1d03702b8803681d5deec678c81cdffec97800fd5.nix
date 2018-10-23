{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cil";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "An interface to CIL.";
      description = "CIL is a simplified, intermediate language for C.\nCIL makes a great frontend for C analysis, instrumentation, and compilation tools.";
      buildType = "Simple";
    };
    components = {
      "cil" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.language-c)
        ];
      };
    };
  }