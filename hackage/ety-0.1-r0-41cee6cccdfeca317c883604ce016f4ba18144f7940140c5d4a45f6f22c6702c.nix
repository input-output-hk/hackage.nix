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
      specVersion = "1.6";
      identifier = {
        name = "ety";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Done 2012";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Random etymology online entry.";
      description = "Retrieve random etymology online entries. Library and program.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.curl)
          (hsPkgs.xml)
          (hsPkgs.utf8-string)
          (hsPkgs.text-icu)
          (hsPkgs.random)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "ety" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.curl)
            (hsPkgs.xml)
            (hsPkgs.utf8-string)
            (hsPkgs.text-icu)
            (hsPkgs.random)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }