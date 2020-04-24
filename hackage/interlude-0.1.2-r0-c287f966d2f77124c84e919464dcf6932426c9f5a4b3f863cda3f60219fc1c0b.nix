{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "interlude"; version = "0.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Ketil Malde <ketil@malde.org>";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Replaces some Prelude functions for enhanced error reporting";
      description = "Interlude is a CPP include file, and a module which you can use instead of the\n(often implicit) Prelude import.  It replaces some partial\nfunctions (i.e. functions that may fail on correctly typed input like 'head []')\nwith pattern matches, so that a sensible error message that includes\nlocation can be printed out.";
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