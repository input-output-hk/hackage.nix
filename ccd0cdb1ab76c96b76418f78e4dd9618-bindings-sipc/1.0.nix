{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bindings-sipc";
        version = "1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "http://justinethier.github.com/hs-bindings-sipc";
      url = "";
      synopsis = "Low level bindings to SIPC.";
      description = "Low level bindings for the SELinux Secure Inter-Process\nCommunications (SIPC) Library.";
      buildType = "Simple";
    };
    components = {
      "bindings-sipc" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."sipc") ];
      };
      exes = {
        "MQCreator" = {
          depends  = [
            (hsPkgs.bindings-sipc)
            (hsPkgs.base)
          ];
        };
        "MQDestroyer" = {
          depends  = [
            (hsPkgs.bindings-sipc)
            (hsPkgs.base)
          ];
        };
        "MQReader" = {
          depends  = [
            (hsPkgs.bindings-sipc)
            (hsPkgs.base)
          ];
        };
        "MQSender" = {
          depends  = [
            (hsPkgs.bindings-sipc)
            (hsPkgs.base)
          ];
        };
      };
    };
  }