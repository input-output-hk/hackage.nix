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
      specVersion = "1.6.0.1";
      identifier = {
        name = "mongrel2-handler";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Mongrel2 Handler Library";
      description = "Mongrel2 Handler Library.\nThis handler library requires that the Mongrel2 server is set up\nto use the 'tnetstring' protocol.";
      buildType = "Simple";
    };
    components = {
      "mongrel2-handler" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.zeromq-haskell)
        ];
      };
    };
  }