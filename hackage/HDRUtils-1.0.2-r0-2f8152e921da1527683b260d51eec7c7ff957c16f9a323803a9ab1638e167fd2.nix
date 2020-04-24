{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HDRUtils"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2009 Jeff Heard";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "http://vis.renci.org/jeff/pfs";
      url = "";
      synopsis = "Utilities for reading, manipulating, and writing HDR images";
      description = "PFS is a library for manipulating Portable Floating-point Streams, an interchange\nformat for high-dynamic range images.  You will need pfstools for this library to work properly.\npfstools can be found at http://pfstools.sourceforge.net/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = [
          (pkgs."pfs-1.2" or ((hsPkgs.pkgs-errors).sysDepError "pfs-1.2"))
          ];
        buildable = true;
        };
      };
    }