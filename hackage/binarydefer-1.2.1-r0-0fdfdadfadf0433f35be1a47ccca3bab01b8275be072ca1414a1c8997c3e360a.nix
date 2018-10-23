{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "binarydefer";
        version = "1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary serialization with deferred loading";
      description = "Binary serialization, but with delays.";
      buildType = "Simple";
    };
    components = {
      "binarydefer" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }