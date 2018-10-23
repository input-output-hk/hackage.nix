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
        name = "named-formlet";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "A simple formlet library with named formlets.";
      description = "A simple formlet library with named formlets (e.g. username, email, password, etc.).";
      buildType = "Simple";
    };
    components = {
      "named-formlet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }