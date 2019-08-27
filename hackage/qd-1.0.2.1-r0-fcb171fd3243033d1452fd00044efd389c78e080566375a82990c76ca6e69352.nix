let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "qd"; version = "1.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "double-double and quad-double number type via libqd";
      description = "This package supports both a double-double datatype (approx. 32 decimal digits)\nand a quad-double datatype (approx. 64 decimal digits), using libqd (which is\nimplemented in C++ with C and Fortran wrappers).  To compile this package you\nneed libqd to be installed.\n\n@'Numeric.QD.DoubleDouble.DoubleDouble'@ and @'Numeric.QD.QuadDouble.QuadDouble'@\nare strict tuples of @CDouble@s, with instances of:\n@'BinDecode'@, @'DecimalFormat'@, @'Eq'@, @'Floating'@, @'Fractional'@, @'Num'@,\n@'Ord'@, @'Read'@, @'Real'@, @'RealFrac'@, @'Show'@, @'Storable'@, @'Typeable'@.\n\nAdditional note: libqd depends on 64bit doubles, while some FPU architectures\nuse 80bit.  When using the Unsafe modules this might cause erroneous results;\nthe Safe modules (used by the instances above) set and restore the FPU flags\nin foreign code to avoid race conditions from pre-emptive Haskell threading.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."floatshow" or (buildDepError "floatshow"))
          ];
        libs = [ (pkgs."qd" or (sysDepError "qd")) ];
        };
      };
    }