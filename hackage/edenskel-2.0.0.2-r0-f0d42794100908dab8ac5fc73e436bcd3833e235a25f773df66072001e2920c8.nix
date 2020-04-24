{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { par = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "edenskel"; version = "2.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eden@mathematik.uni-marburg.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Semi-explicit parallel programming skeleton library";
      description = "This package provides a skeleton library for semi-explicit parallel programming with Eden. Eden and the skeleton library depend on GHC, and should normally use a GHC extension to support parallel execution using message passing. This modified GHC-Eden compiler is available from the <http://www.mathematik.uni-marburg.de/~eden Eden homepage>. When built using a standard GHC, this package will use a threaded simulation of Eden. The <http://www.mathematik.uni-marburg.de/~eden Eden homepage> provides more documentation and a tutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."edenmodules" or ((hsPkgs.pkgs-errors).buildDepError "edenmodules"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }