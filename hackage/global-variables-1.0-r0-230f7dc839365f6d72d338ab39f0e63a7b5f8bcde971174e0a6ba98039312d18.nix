{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "global-variables"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2011 Jean-Marie Gaillourdet";
      maintainer = "Jean-Marie Gaillourdet <jmg@gaillourdet.net>";
      author = "Jean-Marie Gaillourdet and Patrick Michel";
      homepage = "";
      url = "";
      synopsis = "Namespaced, global, and top-level mutable variables without\nunsafePerformIO.";
      description = "'Data.Global' provides a global namespace of 'IORef's, 'MVar's and\n'TVar's. This namespace may be accessed in pure code. Yet reading\nand writing to those 'IORef's, 'MVar's and 'TVar's happens still in\ntheir respective monads.\n\n'Data.Global' is designed to meet the following use cases:\n\n* Simplify the declaration of top-level mutable variables, by\navoiding any pragmas as well as 'unsafePerformIO'.\n\n* Avoid having to pass references explicitly throughout the\nprogram in order to let distant parts communicate.\n\n* Enable a communication by convention scheme, where\ne.g. different libraries may communicate without code\ndependencies.\n\n* Simplify the \\\"configuration problem\\\" - at least for code in the\nIO monad.\n\nNote, that this library does not encourage sloppy software design\nby re-introducing all bad effects of global\nvariables. Nevertheless, sometimes global variables are a suitable\nsolution to a problem. In that case \"Data.Global\" simplifies and\nextends their handling significantly.\n\nExamples are in the documentation of \"Data.Global\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }