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
        name = "hs-popen";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Aditya Siram";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/hs-popen#readme";
      url = "";
      synopsis = "Bindings to C pipe functions.";
      description = "Please see README.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "ls-example-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-popen)
          ];
        };
      };
    };
  }