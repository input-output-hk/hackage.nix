{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "quipper-all"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine,\nNeil J. Ross, Peter Selinger, Benoît Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Meta-package for Quipper.";
      description = "This is a meta-package for Quipper, the embedded functional\nprogramming language for quantum computing. Installing this package\nautomatically installs all components of Quipper, including the\nquipper-language, quipper-libraries, quipper-tools,\nquipper-algorithms, and quipper-demos.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."quipper" or ((hsPkgs.pkgs-errors).buildDepError "quipper"))
          (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
          (hsPkgs."quipper-demos" or ((hsPkgs.pkgs-errors).buildDepError "quipper-demos"))
          ];
        buildable = true;
        };
      };
    }