{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "mime";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 Galois Inc.";
      maintainer = "diatchki@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Working with MIME types.";
      description = "Working with MIME types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }