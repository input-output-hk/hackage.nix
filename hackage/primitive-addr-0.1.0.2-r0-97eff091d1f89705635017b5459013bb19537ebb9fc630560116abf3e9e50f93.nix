{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "primitive-addr"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/primitive-addr";
      url = "";
      synopsis = "Addresses to unmanaged memory";
      description = "This library provides the `Data.Primitive.Addr` module\nthat was a part of the `primitive` library before `primitive-0.7.0.0`.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.primitive) ]; };
      };
    }