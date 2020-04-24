{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "OpenAL"; version = "1.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "None";
      author = "";
      homepage = "http://connect.creativelabs.com/openal/";
      url = "";
      synopsis = "A binding to the OpenAL cross-platform 3D audio API";
      description = "A Haskell binding for the OpenAL cross-platform 3D audio API,\nappropriate for use with gaming applications and many other\ntypes of audio applications.  For more information about OpenAL,\nplease see: <http://connect.creativelabs.com/openal/>.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."ObjectName" or ((hsPkgs.pkgs-errors).buildDepError "ObjectName"))
          (hsPkgs."Tensor" or ((hsPkgs.pkgs-errors).buildDepError "Tensor"))
          ];
        buildable = true;
        };
      };
    }