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
        name = "priority-sync";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "";
      url = "";
      synopsis = "Cooperative task prioritization.";
      description = "A strategy to prioritize access to limited resources.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.PSQueue)
          (hsPkgs.parallel)
          (hsPkgs.stm)
          (hsPkgs.random)
        ];
      };
      exes = {
        "_PrioritySync_Internal_Tests" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }