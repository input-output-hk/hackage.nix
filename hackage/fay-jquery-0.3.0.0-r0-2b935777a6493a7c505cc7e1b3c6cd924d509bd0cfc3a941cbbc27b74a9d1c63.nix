{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fay-jquery"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Adam Bergmark, Brian Victor, Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Adam Bergmark, Brian Victor, Chris Done";
      homepage = "https://github.com/faylang/fay-jquery";
      url = "";
      synopsis = "jQuery binding.";
      description = "jQuery binding.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.fay-base) ]; }; };
    }