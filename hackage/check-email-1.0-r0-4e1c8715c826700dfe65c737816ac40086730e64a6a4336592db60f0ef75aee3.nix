{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "check-email";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Confirm whether an email is valid and probably existant.";
      description = "Confirm whether an email is valid and probably existant.";
      buildType = "Simple";
    };
    components = {
      "check-email" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.email-validate)
        ];
        libs = [ (pkgs."resolv") ];
      };
    };
  }