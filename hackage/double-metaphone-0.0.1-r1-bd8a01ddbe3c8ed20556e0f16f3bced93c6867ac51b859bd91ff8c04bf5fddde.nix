{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "double-metaphone";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>,\nMaurice Aubrey <maurice@hevanet.com>";
      homepage = "https://github.com/christian-marie/double-metaphone";
      url = "";
      synopsis = "Haskell bindings to a C double-metaphone implementation.";
      description = "Compute two metaphones of a latin1 encoded bytestring, based on Perl's text-DoubleMetaphone";
      buildType = "Simple";
    };
    components = {
      "double-metaphone" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }