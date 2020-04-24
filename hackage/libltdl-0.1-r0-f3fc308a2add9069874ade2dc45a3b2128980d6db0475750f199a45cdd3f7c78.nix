{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libltdl"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/projects/libffi";
      url = "";
      synopsis = "FFI interface to libltdl";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "sin" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libltdl" or ((hsPkgs.pkgs-errors).buildDepError "libltdl"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }