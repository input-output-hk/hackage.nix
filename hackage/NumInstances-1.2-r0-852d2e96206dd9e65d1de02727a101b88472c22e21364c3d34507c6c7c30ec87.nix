{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "NumInstances"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "http://github.com/conal/NumInstances";
      synopsis = "Instances of numeric classes for functions and tuples";
      description = "Instances of numeric classes for functions and tuples.\nImport \"Data.NumInstances\" to get all the instances.\nIf you want only function or only tuple instances, import\n\"Data.NumInstances.Function\" or \"Data.NumInstances.Tuple\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }