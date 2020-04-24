{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "reenact"; version = "0.7.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A reimplementation of the Reactive library.";
      description = "Reenact is a reimplementation of the /Reactive/ library by Conal Elliott.\nIt preserves semantics and most operators of the original library. In\nparticular the 'Monoid', 'Applicative' and 'Monad' instances for\n'Events', 'Reactives' and 'Behaviours' are available and have the original semantics.\nThe implementation however is completely different, based on asynchronous\nchannels instead of the 'unamb' operator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."hamid" or ((hsPkgs.pkgs-errors).buildDepError "hamid"))
          (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        buildable = true;
        };
      };
    }