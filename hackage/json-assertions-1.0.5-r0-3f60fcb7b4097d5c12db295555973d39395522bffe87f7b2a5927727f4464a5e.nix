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
      specVersion = "1.10";
      identifier = {
        name = "json-assertions";
        version = "1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/json-assertions.git";
      url = "";
      synopsis = "Test that your (Aeson) JSON encoding matches your expectations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.indexed)
          (hsPkgs.indexed-free)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
        ];
      };
    };
  }