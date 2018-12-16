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
        name = "NumInstances";
        version = "1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/NumInstances";
      url = "";
      synopsis = "Instances of numeric classes for functions and tuples";
      description = "Instances of numeric classes for functions and tuples.\nImport \"Data.NumInstances\" to get all the instances.\nIf you want only function or only tuple instances, import\n\"Data.NumInstances.Function\" or \"Data.NumInstances.Tuple\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }