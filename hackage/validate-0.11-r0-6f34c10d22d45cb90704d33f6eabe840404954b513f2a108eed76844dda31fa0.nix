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
      specVersion = "1.3";
      identifier = {
        name = "validate";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow, Chris Done";
      maintainer = "Matt Morrow <mjm2002@gmail.com>, Chris Done <chrisdone@gmail.com>";
      author = "Matt Morrow, Chris Done";
      homepage = "";
      url = "";
      synopsis = "Validate";
      description = "Validate data provided by users.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.regex-compat)
          (hsPkgs.bytestring)
        ];
      };
    };
  }